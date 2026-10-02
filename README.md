# Civilization II (PS1) Matching Decompilation (`SLUS-00792`)

Byte-for-byte matching decompilation of **Sid Meier's Civilization II** for the Sony PlayStation (NTSC-U release, `SLUS-00792`, built November 16, 1998).

Both retail PS-X executables on the disc are split, rebuilt from C + assembly, and verified **100% byte-for-byte identical** via `make compare`:

| Executable | Role | Retail Size | SHA-1 | Game Functions | PsyQ 4.2 SDK Symbols | Matched C Functions | Total Accounted |
| :--- | :--- | :---: | :--- | :---: | :---: | :---: | :---: |
| **`SLUS_007.92`** | Title / Setup / Intro Movie Player | 290,816 B (`0x47000`) | `362a030a231fc5952010909faf848a8a461bbb3c` | 208 | 375 | **88 / 208 (42.3%)** | **463 / 583 (79.4%)** |
| **`CIV2.EXE`** | Main Strategy Game Engine | 1,351,680 B (`0x14A000`) | `919bad81720f9b0e129fd5f10fb155cd7aa3c98c` | 1,427 | 390 | **631 / 1,427 (44.2%)** | **1,021 / 1,817 (56.2%)** |
| **Combined** | **Full Game** | **1,642,496 B** | **100% Byte-Identical** | **1,635** | **765** | **719 / 1,635 (44.0%)** | **1,484 / 2,400 (61.8%)** |

*(Note: 717 of the 719 matched C functions are spliced directly into `src/slus/game.c` and `src/civ2/game.c`; 2 jump-table functions in `CIV2.EXE` — `func_800916F0` and `func_80094298` — also match 100% and await `.rodata` jump-table migration.)*

---

## Technical Findings & Architecture

### 1. Dual-Executable Structure
Unlike single-binary PS1 games, *Civilization II* splits its code across two PS-X EXE binaries loaded at `0x80010000`:
1. **`SLUS_007.92`** (`290 KB`): Boot loader, title screen, FMV intro movie playback (`PlayStr`), CD-XA streaming, and game setup menus. Launches `cdrom:\CIV2.EXE;1` via `LoadExec`.
   - `vram`: `0x80010000` | `pc0`: `0x8002C8CC` (`__SN_ENTRY_POINT`) | `gp0`: `0x80054710`
   - `.rodata`: `0x80010000..0x80017FE4` (`game` + `psyq`)
   - `.text` (`game`): `0x80017FE4..0x8002C8CC` (84 KB, 208 functions)
   - `.text` (`psyq`): `0x8002C8CC..0x80046F10` (108 KB, 375 SDK symbols)
   - `.data` / `.sdata`: `0x80046F10..0x800564B8`
   - `.sbss` / `.bss`: `0x800564B8..0x80197838` (`0x141380` bytes)
2. **`CIV2.EXE`** (`1.35 MB`): The entire *Civilization II* game engine (map generation, city management, diplomacy, AI, tech tree, combat, wonder movies, advisor UI, save/load).
   - `vram`: `0x80010000` | `pc0`: `0x800E0754` (`__SN_ENTRY_POINT`) | `gp0`: `0x00000000` in header, initialized at runtime in `__SN_ENTRY_POINT` (`0x800E07D0`) to **`0x801584D8`**
   - `.rodata`: `0x80010000..0x80013F38` (`game` + `psyq`)
   - `.text` (`game`): `0x80013F38..0x800E0754` (837 KB, 1,427 functions)
   - `.text` (`psyq`): `0x800E0754..0x8010BA14` (176 KB, 390 SDK symbols)
   - `.data` / `.sdata`: `0x8010BA14..0x80159418`
   - `.sbss` / `.bss`: `0x80159418..0x801640C8` (`0xACB0` bytes)

### 2. Compiler & Toolchain Fingerprint
- **Compiler**: **PsyQ GCC 2.7.2** (`GNU C 2.7.2 [AL 1.1, MM 40] Sony Playstation`)
  - Flags: `-O1 -G8 -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker` (with a small subset of functions compiled at `-O2 -G8`, annotated with `/* @O2 */`).
- **Assembler Preprocessor**: **`ASPSX 2.56`** (emulated via `maspsx --aspsx-version=2.56 --expand-div -G8` followed by `mipsel-linux-gnu-as -G0`).
- **SDK Version**: **Sony PsyQ 4.2 (`420`)** (verified via `lab313ru/psx_psyq_signatures` against embedded RCS strings `$Id: intr.c,v 1.76`, `$Id: bios.c,v 1.86`, `$Id: sys.c,v 1.140 1998/01/12`, plus C++ `LIBSN.LIB` operators `_OP_VDEL.OBJ`, `_OP_VNEW.OBJ`, `_OP_DELE.OBJ` in `CIV2.EXE`).

### 3. Automated Decompilation Enhancements
To maximize automated byte-for-byte matching before manual decompilation, several key enhancements were implemented across the toolchain:
1. **Runtime `$gp` Discovery & Per-Function `# MASPSX_GPREL:` Tracking (`external/maspsx`, `tools/maspsx_wrap.py`)**:
   - Discovered that `CIV2.EXE` sets `$gp = 0x801584D8` inside `__SN_ENTRY_POINT` (`0x800E07D0..0x800E07D4`) despite `gp0 = 0` in the PS-X EXE header, accessing 348 symbols (`D_801584FC..D_80159528`) via `%gp_rel`.
   - Because `CIV2.EXE` links multiple translation units where 100 globals are declared extern arrays/structs (`%hi/%lo`) in some TUs and scalars (`%gp_rel`) in others, `maspsx` was extended with `# MASPSX_GPREL:` directives injected per function by `tools/maspsx_wrap.py`.
   - Running `mipsel-linux-gnu-as` with `-G0` after `maspsx -G8` ensures `la $reg, SYM` instructions on `.sdata`/`.sbss` globals expand to `lui %hi(SYM) + addiu %lo(SYM)` rather than `addiu $reg, $gp, %gp_rel(SYM)`.
2. **MIPS O32 Contiguous Argument Slot Inference (`external/m2c/m2c/arch_mips.py`)**:
   - Ported the contiguous argument register propagation (`# If register aX is likely, all previous ones are as well`) from `arch_arm.py` to `arch_mips.py`, resolving the `# TODO: don't do this in the middle of the argument list` in `m2c` where wrapper functions passing `arg0` (`$a0`) untouched to a callee while modifying `$a1`/`$a2`/`$a3` previously dropped `arg0` from both the wrapper signature and callee call. This single fix yielded **+62 additional 100%-matching functions**.
3. **Automated `m2c` Post-Processing (`tools/auto_match_sweep.py`)**:
   - **Exact `%lo(SYM)` Access-Type Inference**: Inspects each function's `.s` file for `lbu`/`lhu`/`lb`/`lh`/`lw`/`sb`/`sh`/`sw` on `%lo(D_XXXXXXXX)` and rewrites `*(&D_XXXXXXXX + offset)` to `*(TYPE *)(((s8 *)&D_XXXXXXXX) + offset)` recursively from innermost to outermost dereference.
   - **Byte-Stride Global Pointer Arithmetic**: Casts `&D_XXXXXXXX + offset` to `(void *)&D_XXXXXXXX + offset` so GNU C pointer arithmetic uses 1-byte stride instead of 4-byte `M2C_UNK` stride.
   - **Missing Leading Parameter Padding**: Pads skipped leading MIPS argument registers (`arg0`, `arg1`, `arg2`) in function signatures when a function only reads higher argument registers (`arg1..arg3`).
   - **Cross-Function Symbol Aliasing (`tools/splice_matched.py`)**: Uses GNU C `__asm__("SYM")` labels on block-scope `extern` declarations when different functions in `game.c` infer signed vs. unsigned types for the same global symbol, preserving exact per-function codegen in a single translation unit.
   - **Signature Reconciliation on Splice (`tools/splice_matched.py`)**: A function whose definition is spliced while an already-present caller declares it `M2C_UNK f();` is rejected under C89 ("conflicting types"), and a *prototype* definition additionally breaks call sites that legitimately pass fewer arguments than the callee reads (the O32 ABI simply leaves the remaining `$a0-$a3` registers untouched). Newly spliced definitions therefore (a) rewrite every pre-existing declaration of that symbol to the definition's return type *without* a parameter list, and (b) are emitted in K&R parameter style (opt-in list in the tool) whenever an existing call site under-supplies arguments — a K&R definition accepts both a full and an empty argument list. Single-line drafts are expanded so that collected `extern` lines land inside the body.
4. **ASPSX `$at` Symbol-Offset Expansion**: 552 of the 1,427 `CIV2.EXE` functions contain the sequence `lui $at, %hi(SYM)` / `addu $at, $at, RIDX` / `l{b,h,w} RD, %lo(SYM)($at)`. This is *not* a compiler idiom: it is the ASPSX 2.56 assembler rewriting a compiler-emitted `lw RD, SYM(RIDX)` (symbol offset plus a variable register) into a scratch-register sequence at assembly time. `tools/maspsx_wrap.py` reproduces the expansion, so the plain C form (`extern u8 D_XXXX[]; ... D_XXXX[i * STRIDE] ...`) matches byte-for-byte. Functions carrying this pattern had been systematically avoided as "unmatchable"; they are in fact ordinary code, and the smallest ones (`func_8007CE00`, `func_80077D2C`, `func_800D9F10`, …) are among the cheapest remaining matches.

### 3b. Remaining Near-Misses (resume here)
Verified measurements (`tools/try_match.py`, diff counts = differing instructions):

| Function | Size | Diffs | What is left |
| :--- | ---: | ---: | :--- |
| `func_8001470C` | `0x38` | 2 | Shift count kept in `$v1` instead of reusing `$a0` (`sll v1,a0,1` / `srav v0,v0,v1`); 20+ source forms tested, always `$v1` |
| `func_80094CC4` | `0x34` | 2 | Third `xor`'s operand order only; 60+ statement permutations swept, cc1 always canonicalises it to `xor v0,v0,a0` (inline memory operand fixes xors #1/#2) |

| `func_800B245C` | `0x3c` | 4 | `arg1 * 0x30` must land in `$v0` and the table load in `$v1`; declaration/assignment order permutations all give the reverse |
| `func_800CEF38` | `0x24` | 5 | `-arg1` must compile to `nor $v0,$zero,$a1` + `addiu $v0,$v0,1`, not `negu` |
| `func_800CE4FC` | `0x34` | 6 | `if`/`else` polarity plus the `addiu $sp,-8` pre-adjustment |
| `func_800DD784` | `0x38` | 7 | Symbol address must be materialised in `$v1` before the index is added |
| `func_80014AAC` | `0x38` | 7 | Retail keeps `1 << arg1`; cc1 rewrites the bit test to `srav`+`andi 1` |
| `func_800D9C5C` | `0x3c` | 10 | Both base symbols materialised in registers (`lui/addiu` + `addu`) |
| `func_8009800C` | `0x34` | 11 | Retail re-reads the halfword it just stored; cc1 forwards the stored value |
| `func_800CEE08` | `0x30` | 12 | Same `nor`/`addiu` negation idiom as `func_800CEF38` |
| `func_80085170` | `0x40` | 14 | `s16` stack parameter must be read with `lh`, not `lw` + `sll/sra` (cc1 promotes because the callee has no prototype) |
| `func_800CAC4C` | `0x58` | 16 | Boolean accumulation across `!`, `||` and a comma expression |
| `func_8009BC2C` | `0xdc` | 35 | Target hoists `&D_8011E72C` into `$s5` and loads the guard through generic `$at` addressing; all draft forms tested hoist `&D_8011E956` instead |
| `func_8009BE60` | `0xac` | 43 | Same root cause as `func_8009BC2C`; size is already exact at `-O2` |

Idioms that have resolved other near-misses (re-apply before rewriting logic):
1. **Optimisation level**: the retail build mixes `-O1` and `-O2`. A candidate 10+ diffs away at `-O1` can be exact at `-O2` (both were found this way: `func_800C4FAC`, `func_800C58A8`). Always test `-O2`/`-O3` before abandoning a draft.
2. **Symbol declared as a byte array**: `extern u8 SYM[];` with `*(s32 *)SYM` / `(s8 *)SYM - K` makes cc1 materialise the address into a register instead of using the assembler's symbol-offset form — required when the retail code keeps the address in a saved register because it is also used as a value.
3. **Local declaration order is load-bearing**: swapping two `s32` declarations can change which register cc1 allocates to which variable (`func_800A2364` matched only after `r` was declared before `v`).
4. **Temp type drives the load width**: an `s16` temporary is loaded with `lh`, an `s32` one with `lh` + use; a value only ever stored back as a halfword can be loaded with `lhu` where the retail code uses `lh` (`func_800CEC14`).
5. **A variable read back from memory through a local keeps its register**: giving a parameter to a local (`s16 v = arg2;`) and then using `(u16)v` forces the mask to be built from the *saved* copy (callee-saved) instead of re-reading the incoming argument register — this is what completed `func_80094A2C`.
6. **One variable, two roles**: reusing the same local first for a function result and later as a loop counter makes cc1 place it in a callee-saved register (live across the calls), which is the shape `func_8007D62C` needs; a separate temporary lands in `$v1` instead.
7. **Signed store of `-1`**: storing `-1` through an `s8 *` emits `addiu $v0,$zero,-1`, while storing it through a `u8 *` emits `li v0,255` — the exact difference that matched `func_8002E690`.
8. **Early `return arg0;` merges epilogues**: for `x == 0 → return arg0; else shift`-shaped functions the retail code keeps one shared `jr $ra` with the value already moved into `$v0`; writing the early return instead of a `var = arg0` initialization reproduces it (`func_800B4514`, `func_800CEF38`'s remaining diff).
9. **Hoisted mask position is visible**: writing `arg0 &= 0xFF;` before a loop puts the `andi` before the loop's signed pre-check (`blez`); writing the mask inline in the comparison (`if (*p == (arg0 & 0xFF))`) lets cc1 hoist it *after* the pre-check instead — the retail shape (matched `func_8001B588`/`func_8001B5C8`/`func_8001B540` in `SLUS_007.92`).
10. **Nested `if`s instead of `&&` defeats range-check folding**: cc1 rewrites `a < 0xD3 && a >= 0xD0` into `(u32)(a - 0xD0) < 3` (one `sltiu`), but the retail code keeps two separate `slti`s. Writing the outer test first and nesting the inner one (`if (a < 0xD3) { if (a >= 0xD0) ... }`) preserves the retail shape — this is what matched `func_800C82B4`.
11. **Prototype-less callees promote arguments**: `void f();` makes cc1 widen short arguments at the call site, which changes the caller's codegen.

---

### 4. Call-Graph Impact Analysis & Manual Decompilation of Core Engine Hubs
Using `tools/callgraph_impact.py`, all unmatched functions in `SLUS_007.92` and `CIV2.EXE` were ranked by caller fan-in, total call sites, and global data array access frequency. The **38 highest-impact hub functions** (9 in `SLUS_007.92` and 29 in `CIV2.EXE`, accounting for **2,369 call sites** across both executables) were manually decompiled, verified to 100% byte-for-byte identity with `tools/try_match.py`, and spliced into `src/slus/game.c` and `src/civ2/game.c`:

#### Top Manually Decompiled Hubs in `SLUS_007.92`
| Function | Callers | Call Sites | Size | Engine Role & Key Findings |
| :--- | :---: | :---: | :---: | :--- |
| `func_8001B074` | 25 | 122 | `0x74` | `GsSPRITE` 36-byte (`0x24`) entry initializer from texture table (`0x80` neutral RGB, `0x1000` 1.0x fixed-point scale) |
| `func_8001EA80` | 9 | 24 | `0xF0` | `mess_key` localized text/dialog dispatcher (`D_80017188`) |
| `func_8001E20C` | 14 | 18 | `0x124` | `mess_string_write` text entry renderer over 20-byte (`0x14`) descriptors in `D_80046F1C` |
| `func_8002B570` | 11 | 13 | `0x18` | Stripped variadic debug `printf` stub (`void func_8002B570(s32 fmt, ...) {}`) |
| `func_8001A1B8` | 8 | 10 | `0x54` | Full-VRAM `ClearImage` (`640x240`) + `DrawSync(0)` |
| `func_8001B250` | 6 | 7 | `0x9C` | Dual-port controller pad state poller (`D_800552A8` current, `D_800552AC` newly pressed edge trigger, `D_800552B0` previous) |
| `func_8001DC20` | 4 | 4 | `0xB4` | Marks sprites `0x45..0x64` invisible (`attr |= 0x80000000`) in `D_8012A0E0` (`0x24` stride) and clears font VRAM cache |
| `func_80018EF4` | 4 | 4 | `0x30` | Big-endian 16-bit command dispatcher (`(arg0[0] << 8) \| arg0[1]`) |
| `func_8002BD88` | 4 | 4 | `0x54` | Looks up 11-byte (`0xB`) CD/resource descriptor in `D_8004C5E8` |

#### Top Manually Decompiled Hubs in `CIV2.EXE`
| Function | Callers | Call Sites | Size | Engine Role & Key Findings |
| :--- | :---: | :---: | :---: | :--- |
| `func_80072A28` | 75 | 259 | `0xB0` | **`civ_has_tech(civ_id, tech_id)`** — queries tech bitmask in Civilization struct array (`D_801176EC`, stride `0x578` = 1,400 B) |
| `func_80089B20` | 59 | 193 | `0x84` | **`city_has_building(city_id, bldg_id)`** — queries improvement bitmask (`1..34`) in City struct array (`D_80113F08`, stride `0x58` = 88 B) |
| `func_800DEF04` | 52 | 176 | `0xAC` | **`civ_has_active_wonder(civ_id, wonder_id)`** — checks wonder obsolescence & city owner (`D_80113ED8[city_id].owner == civ_id`) |
| `func_800C6DCC` | 49 | 166 | `0x34` | **`append_string_by_id(buf, str_id)`** — appends string from `LABELS.TXT`/`GAME.TXT` pointer table `D_8015894C[str_id]` |
| `func_800CEBD4` | 71 | 161 | `0x28` | **`clamp(val, min, max)`** (`/* @O2 */`) |
| `func_800C6E70` | 42 | 156 | `0x44` | **`append_int_decimal(buf, val)`** — formats `s16` in base 10 via `itoa` (`func_800F5254`) and appends to string buffer |
| `func_800A8560` | 32 | 143 | `0x84` | **`read_text_file_line()`** — reads next line from active ruleset/text file handle (`D_80158D30`) into `D_80121340` |
| `func_800B8C60` | 43 | 132 | `0xA8` | **`show_modal_dialog(title, text, flags)`** — constructs `0x2A0`-byte dialog object on stack, runs modal loop, stores selection in `D_80158FD8` |
| `func_80095174` | 51 | 130 | `0xB4` | **`get_civ_adjective_name(civ_id)`** — resolves tribe adjective from `D_80116ADC` (stride `0x30`) or custom string `D_80116EDA` (stride `0xF2`) |
| `func_80095228` | 50 | 82 | `0xB4` | **`get_civ_noun_name(civ_id)`** — resolves tribe plural noun from `D_80116ADE` (stride `0x30`) or custom string `D_80116EF2` (stride `0xF2`) |
| `func_800B16B4` | 70 | 81 | `0x3C` | **`Dialog_ctor(this, flags)`** — base UI dialog constructor (`this->flags_1A6 = flags`) |
| `func_80098848` | 37 | 80 | `0x50` | **`get_tile_unit_owner(x, y)`** — returns tile owner if unit present (`(flags & 0x42) == 2`), else `-1` |
| `func_800988E8` | 26 | 51 | `0x54` | **`get_tile_city_or_unit_owner(x, y)`** — returns tile owner if bit 0 set (`flags & 1`), else `-1` |
| `func_8007B6FC` | 37 | 51 | `0x30` | **`get_unit_type(unit_id)`** — reads `unit.type` (`D_8010D6CC`, stride `0x1A` = 26 B) |
| `func_8009BD08` | 27 | 50 | `0xAC` | **`refresh_map_viewports(x, y)`** — updates active viewport descriptors (`D_8011E72C`, stride `0x2C0` = 704 B) |
| `func_800CED94` | 21 | 46 | `0x74` | **`map_distance(x1, y1, x2, y2)`** — isometric tile distance with cylindrical world-wrap (`D_8011A250 & 0x8000`, width `D_8011C308`) |
| `func_80098684` | 20 | 42 | `0x4C` | **`is_tile_visible_to_civ(x, y, civ_id)`** — checks per-civ fog-of-war visibility mask (`tile[4] & (1 << civ_id)`) |
| `func_8007B798` | 27 | 36 | `0x78` | **`get_unit_stack_head(unit_id)`** — walks `unit.prev_in_stack` linked list (`D_8010D6CA`, stride `0x1A`) |
| `func_8007B6A0` | 15 | 36 | `0x5C` | **`get_unit_remaining_hp(unit_id)`** — `max(max_hp - unit.damage, 0)` (`D_8010D6BC`, stride `0x1A`) |
| `func_80018C30` | 23 | 29 | `0x74` | Heap free-space query / memory compaction check (`D_80158564 - D_80158568`) |
| `func_80094FE0` | 25 | 28 | `0xB4` | **`get_civ_leader_title(civ_id)`** — resolves ruler title from `D_80116ADA` or custom string `D_80116EC2` |
| `func_800B20E4` | 20 | 28 | `0x7C` | UI control proportional value scaler (`(val * num / den) / 2`) |
| `func_800DD82C` | 9 | 20 | `0x70` | Rating tier bucket classifier (`0..8` for `0..100`) (`/* @O2 */`) |
| `func_800B31E8` | 8 | 18 | `0x44` | Linked-list item index finder (`node = node->next_0xC`) |
| `func_80014514` | 15 | 17 | `0x18` | Stripped variadic debug `printf` stub (`void func_80014514(s32 fmt, ...) {}`) |
| `func_80098898` | 12 | 16 | `0x50` | **`get_tile_city_owner(x, y)`** — returns tile owner if city present (`(flags & 0x42) == 0x42`), else `-1` |
| `func_8007E4D4` | 12 | 15 | `0xA4` | **`refresh_unit_tile(unit_id)`** — bounds-checks `unit.x, unit.y` against map dimensions (`D_8011C308 x D_8011C30A`) and refreshes viewport |
| `func_800DEEC4` | 10 | 15 | `0x40` | **`get_wonder_city(wonder_id)`** — returns city ID holding `wonder_id` from `D_8011A342[28]` if not destroyed |
| `func_80089484` | 8 | 14 | `0x70` | **`city_record_seen_by_civ(city_id, civ_id)`** — sets `city.seen_mask \|= (1 << civ_id)` and latches `city.seen_size[civ_id] = city.size` |

---

### 5. Per-Function Compiler-Flag Overrides (`@CFLAGS`)

Functions in a single translation unit are not all built with the same flags. `maspsx_wrap.py`
already re-compiled individual functions at `-O2 -G8` when they carried a `/* @O2 */`
annotation; this is now generalised to any flag set via `/* @CFLAGS: <flags> */`:

```c
/* @CFLAGS: -O1 -G0 */
s32 func_8006A9B8(s32 arg0, s32 arg1) { ... }
```

The wrapper re-runs `cc1` over the whole translation unit once per distinct flag set, extracts
only the annotated `.ent`/`.end` blocks (renaming local `$L` labels per set to avoid collisions)
and substitutes them at their original definition sites. Sweeping the *unmatched* functions
across a wider flag matrix (`-O1/-O2/-O3` × `-G0/-G4/-G8`, plus `-fomit-frame-pointer`,
`-fstrength-reduce`) found **7 further functions that were previously assumed unreachable** —
6 at `-O1 -G0`/`-O2 -G0` and 1 in `SLUS_007.92` at `-O1 -G0` — which is why the sweep now
exposes `--opts` and `--only-file`. These functions never touch `$gp`, so they must be compiled
without the `-G8` small-data threshold that the rest of the file uses.

### 6. Automated Matching Pipeline

The end-to-end sweep is three stages, all re-runnable:

```bash
python3 tools/gen_m2c_cache.py --jobs 8           # m2c over every nonmatching .s -> /tmp/m2c_cache_*.pkl
python3 tools/auto_match_sweep.py \
    --bin civ2 --only-file /tmp/unmatched_civ2.txt \
    --opts="-O1 -G8" --opts="-O2 -G8" --opts="-O1 -G0" --opts="-O2 -G0" \
    --out /tmp/matched_civ2.pkl                   # compile + byte-compare, keep 100% matches
python3 tools/splice_matched.py                   # splice verified bodies into src/*/game.c
make -j$(nproc) && make compare                   # the only result that counts
```

`tools/m2c_postprocess.py` holds the shared m2c output normalisation (exact `%lo` access-type
inference, byte-stride global pointer arithmetic, missing leading argument padding) used by the
sweep. Splicing a new batch surfaces the usual C89 declaration hazards, all of which the splicer
now repairs automatically rather than per function:

* a call site declaring a callee with different parameter types than the callee's own
  definition in the same translation unit (`conflicting types for ...`) — the definition wins;
* a call passing *more* arguments than the callee's definition declares — legal at the MIPS O32
  level, but illegal to express twice in C89, so the call gets a local alias bound to the same
  symbol with `__asm__("func_XXXXXXXX")`;
* helpers that earlier batches typed `void` but which new callers read `$v0` from
  (`void value not ignored as it ought to be`) — declaration widened, body untouched.

## Building & Verifying

0. Fetch the toolchain (GCC 2.7.2 PSX `cc1`, MIPS binutils, Python packages) and unpack the disc:
   ```bash
   tools/setup_toolchain.sh
   tools/extract_disc.sh "/path/to/Civilization II (USA).cue"   # verifies SHA-1s
   ```
1. Place retail `SLUS_007.92` and `CIV2.EXE` in `disks/us/` and the `gcc-2.7.2-psx` binary in `bin/gcc-2.7.2-psx/cc1`.
2. Build both executables and verify 100% byte-for-byte identity:
   ```bash
   make -j2
   make compare
   ```
3. Test an individual C function against the retail binary:
   ```bash
   python3 tools/try_match.py func_8001820C /tmp/func.c --bin slus
   python3 tools/try_match.py func_80015A14 /tmp/func.c --bin civ2
   ```
