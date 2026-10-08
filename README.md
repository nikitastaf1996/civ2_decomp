# Civilization II (PS1) Matching Decompilation (`SLUS-00792`)

Byte-for-byte matching decompilation of **Sid Meier's Civilization II** for the Sony PlayStation (NTSC-U release, `SLUS-00792`, built November 16, 1998).

Both retail PS-X executables on the disc are split, rebuilt from C + assembly, and verified **100% byte-for-byte identical** via `make compare`:

| Executable | Role | Retail Size | SHA-1 | Game Functions | PsyQ 4.2 SDK Symbols | Matched C Functions | Total Accounted |
| :--- | :--- | :---: | :--- | :---: | :---: | :---: | :---: |
| **`SLUS_007.92`** | Title / Setup / Intro Movie Player | 290,816 B (`0x47000`) | `362a030a231fc5952010909faf848a8a461bbb3c` | 208 | 375 | **94 / 208 (45.2%)** | **469 / 583 (80.4%)** |
| **`CIV2.EXE`** | Main Strategy Game Engine | 1,351,680 B (`0x14A000`) | `919bad81720f9b0e129fd5f10fb155cd7aa3c98c` | 1,427 | 390 | **799 / 1,427 (56.0%)** | **1,186 / 1,827 (64.9%)** |
| **Combined** | **Full Game** | **1,642,496 B** | **100% Byte-Identical** | **1,635** | **765** | **890 / 1,635 (54.4%)** | **1,655 / 2,410 (68.7%)** |

*(Note: every matched C function is now spliced directly into `src/slus/game.c` and
`src/civ2/game.c` — including the last three holdouts, whose `.rodata` (a `"+"` string blob
for `func_8008FADC`, jump tables for `func_800916F0` and `func_80094298`) used to keep them
out of the build; see section 6. Counts are `1,427 - $(grep -c INCLUDE_ASM src/civ2/game.c)`
and `208 - $(grep -c INCLUDE_ASM src/slus/game.c)`.)*

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
- **Assembler Preprocessor**: **`ASPSX 2.56`** (emulated via `maspsx --aspsx-version=2.56 --expand-div -G8` followed by `mipsel-linux-gnu-as -G0`).  Two cc1-vs-aspsx divergences are corrected in `tools/maspsx_wrap.py`: the `$at` symbol-offset expansion (section 5) and the jump-table alignment (cc1's `.align 3` downgraded to `.align 2`, section 6).
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

**Status of the current pass (civ2 799/1427, SLUS 94/208).** The full 1427-function
draft cache was rebuilt (`gen_m2c_cache.py --force`) and swept in three flag sets
(`-O1 -G8`, `-O1 -G8 -fschedule-insns -fschedule-insns2`,
`-O2 -G8 -fno-strength-reduce`): **the raw m2c drafts match nothing exactly** — every
remaining function needs hand repair first. Two concrete, reusable results:

* **Scheduling flags are per-function, not per-file.** `func_800B94A4` (hub, 15
  callers) matches only with `-O1 -G8 -fschedule-insns -fschedule-insns2`
  (`-O1 -G8` reproduces everything except the prologue, where retail interleaves
  each `sw $sN` with the `addu $sN,$a0,$zero` that fills it; `-O2 -G8
  -fno-strength-reduce` also matches). Enable `-fschedule-insns2` globally and
  *both* binaries stop matching, so this must be expressed as a `@CFLAGS`
  annotation, never as a `CC1FLAGS` change.
* **Annotated functions must declare their use of globals and callees locally.**
  `maspsx_wrap.py` re-parses the whole translation unit once per flag set, so a
  spliced body that relies on a file-scope `extern`/prototype further down the
  file works with the default flags and *fails* with the alternate set
  (`D_8011E748 undeclared`). Put the declarations inside the function body, as the
  hand-matched bodies already do.

**The whole unmatched set is now triaged by score, not by guess.** `tools/triage_all.py`
writes every enhanced/repair draft to `/tmp/tri/<func>.c` (hand drafts in
`/home/user/drafts/` win where they exist) and runs `try_match.py` over all of them for
each requested flag set, producing `/tmp/triage_<opt>.txt` sorted by
`(diffs, |size delta|, callers)`.  For civ2 at `-O1 -G8`: 544 of 644 drafts compile and
score, **115 land within 40 instructions** of the target (1 at 3 diffs, 3 at ≤10), and 96
drafts still fail `cc1` outright.  The sweep's own `--near` mode records nothing for this
set, because it only scores drafts that assemble — the triage queue is the tool to use.

Four idioms from the current pass, each of which alone turned a near miss into a match
(`func_80070600`, `func_800706F8`, `func_800B1408`, `func_8007B334`):

* **Pin the variables to the registers retail chose.** cc1 hands the callee-saved
  registers out by a priority heuristic, so two live-across-call variables routinely land
  in the opposite order than the original compiler put them — no source spelling changes
  that.  Retail's prologue states the answer (`addu $s0, $a1, $zero` = "the variable
  assigned from arg1 lives in $s0"), so write `register <type> var_s0 __asm__("$16");` and,
  when retail keeps a parameter in a saved register that the draft uses directly, give it
  an explicit `var_sN = argN;` statement and pin that.  `tools/pin_retail.py` does this
  automatically from the draft + retail disassembly (it turned the raw m2c drafts of both
  29-caller functions into matches, and improves 19 further candidates).
* **A branchless `max`/`min` return is not spelled as an expression.** m2c's
  `return -(x > 0) & x;` compiles to a branch at every flag set; the source form
  `var = 0; if (x > 0) var = x; return var;` gives retail's `slt / negu / and` sequence
  (`func_8007B334`).  Same for `x < 0 ? x : 0` and friends — prefer the statement form.
* **Operand order survives in the pointer arithmetic, not in the `+`.** For
  `addu $v0, $v0, $a0` (index first) the spelling that reproduces it is
  `M2C_FIELD(var_v0 + (s32)(u8 *)arg0, s32 *, 0x1D4)`; the plain
  `M2C_FIELD((var_v0 + arg0), ...)` canonicalises to `addu $v0, $a0, $v0`
  (`func_800B1408`).
* **A halfword that is loaded and used as a word must be held in an `s32`, not an `s16`.**
  With `s16 v = arr[i];` cc1 emits `lhu` + `sll 16`/`sra 16` at each use; declaring the
  variable `s32` makes it load with the sign-extending `lh` and use the value directly,
  which is what retail does (`func_800C84F0`, `func_8007E6AC` -- the latter went from 17
  diffs to a match with that single edit, and the same one-line change in
  `func_80086178`).  Retail's `lh`/`lb` where m2c produced `lhu`/`lbu` plus a shift is the
  tell.
* **A multiply that is re-derived every iteration sits at the *top* of the loop body.**
  m2c's `do { ...; var_v0 = var_v1 * 4; } while (...)` puts the shift in the back edge;
  retail (`func_800B1408`) computes it at the loop head and again in the branch delay
  slot, which is what a plain `for` loop with the index expression inside produces.

Three more idioms from this pass (`func_800CBD90`, `func_800B322C`, `func_800CEE08`):

* **An early return inverts which block gcc merges.** `if (f(...) != 0) { body; return 1; }
  return 0;` lets cc1 merge both returns into one shared epilogue (value in a register);
  the spelling `if (f(...) == 0) { return 0; } body; return 1;` instead emits the
  `return 1` as `j <epilogue>` with `addiu $v0, $zero, 1` in the delay slot and the
  `return 0` as its own one-instruction block at the branch target — exactly retail
  (`func_800CBD90`).
* **An early-return guard before a `while` loop is *not* merged with the loop's rotated
  guard.** `if (var_v0 == NULL) { return NULL; } ... while (var_v0 != NULL) { ... }`
  keeps two separate `beqz $v0` instructions (the early return's and the loop guard's),
  where wrapping the loop in `if (var_v0 != NULL) { while ... }` collapses to one
  (`func_800B322C`, 11 callers).
* **A `register` pin on `$v1` keeps a second abs() temp from being coalesced into the
  argument register.** `register s32 temp_v1_2 __asm__("$3");` forces the
  `addu $v1, $a1, $zero` copy to survive (scheduled into the `bgtz` delay slot) instead
  of cc1 folding the temp into `$a1` (`func_800CEE08`).

Machine-assisted queue: `tools/pin_retail.py` (register pins from retail's prologue) and
the widen-to-`s32` rewrite are cheap to apply in bulk.  Over the 192 candidates within 60
diffs they produce **6 matches** (`func_80070600`, `func_800706F8`, `func_80086178`,
`func_8008C924`, and the two cited above when re-derived from raw m2c output) and improve
30 more; the best remaining ones after both transforms, for the next pass:
`func_800C67FC` 40 → 12 diffs, `func_8007D464` 25 → 14, `func_8009F460` 44 → 19,
`func_800C7AC8` 42 → 24, `func_8008C924` solved, `func_8002E5E0` 27 → 24,
`func_80096658` 24 → 23.  Their transformed drafts are in `/home/user/drafts/`.

Five enhanced drafts that used to fail `cc1` now compile after small repairs
(`/home/user/drafts/`, best known scores at `-O1 -G8`): `func_80089980` 86 diffs
(0x1a8 vs 0x1a0; drop the bogus `var_s6 = saved_reg_s6;`), `func_800A74AC` 212
(`SsVoKeyOff` prototype + `spAC` → `M2C_FIELD(&spA0, s32 *, 0xC)`), `func_800B80B0`
498 (`func_80014514` is the varargs stub of idiom 0r), `func_8008528C` 299, and
and `func_800B918C` 63 (0x134 vs 0x13c) — fix `spE8` → `M2C_FIELD(&sp28, s32 *, 0xC0)` and
size the frame objects (`s8 sp28[0x2A0]; s8 sp2C8[0x98];`) so the 0x378-byte retail frame
comes back (a bare `M2C_UNK sp28;` compiles to a 0x48 frame and never matches).

`tools/auto_match_sweep.py --near N` also records the functions that are *close*
but not exact, which turns the sweep into a triage tool.  The queue is a snapshot
of one flag matrix over one draft cache, so build it from **every** variant cache
(`tools/m2c_variants.py` rewrites one spelling into another: a function that is
exact under the plain draft can be a near miss under a rewrite and vice versa --
pass each cache its own `--near-out` file and merge, do not overwrite) and from a
flag matrix wide enough to include the scheduling flags
(`-fno-schedule-insns[2]`, `-fno-delayed-branch`, `-fomit-frame-pointer`), which is
how `func_800B4B7C`, `func_800A2BB8` and `func_8007B980` were matched.

The queue as of this revision (679 unmatched `CIV2.EXE` functions, base + `_v2`
caches, twelve flag sets, `--near 40`):

| Function | Diff | Flag set | What is left |
| :--- | ---: | :--- | :--- |
| `func_8007BF24` | 8 | `-O1 -G0` | **matched** -- see idiom 0p: the call arguments have to be written as array subscripts on a `u8[]`-declared global, not as `(EXPR) + (void *)&SYM` |
| `func_80095A10` | 8 | `-O1 -G8` | A 28-byte copy loop. The retail build keeps the *high half* of `&D_801A0000` in `$a1` and folds the low half into every load and into `addiu $a1,$a1,%lo(SYM+1)`; every pointer spelling tried so far makes cc1 materialise the full address with a second `addiu` |
| `func_80070600` | 9 | `-O1 -G8` | -- |
| `func_800DE1C8` | 9 | `-O1 -G8` | The `lui/addiu` of `func_800DE830` and the 0x138-byte frame match; the tail `jal` sequence does not |
| `func_80089BA4` | 4 | `-O1 -G0` | Realigned: 53/53 instructions, the whole diff is `la $v1,D_80113F08` / `lw $a0,0x10($sp)` / `addu` / `addu` (retail) vs `lw $3` / `la $4` / `addu $3,$3,$4` / `addu $2,$2,$3` (draft) -- cc1 reassociates the pointer sum to `chain + (sp10 + base)`.  Six spellings (`(s32)` casts, two-statement splits, named base, array form) all keep the draft's tree; needs a different idea |
| `func_800CEAA8` | 10 | `-O2 -G8` | -- |
| `func_800CEE08` | 10 | `-O2 -G8 -fno-delayed-branch` | Two `abs`-style halves; the draft branches on the copy of `$a1` where retail branches on `$a1` itself and leaves the copy in the delay slot |
| `func_800B4560` | 5 | `-O1 -G8` | **matched** -- see idiom 0q: m2c's `if (x != 1) { return A; } return B;` has to be inverted to `if (x == 1) { return B; } return A;` |

`func_800B4560` also shows why a queue built only from same-size drafts misses
things: its 5 diffs are recorded at a **-4 byte** draft, which the sweep used to
skip outright (see `--size-tolerance` in section 6).

The same build of the queue for the 116 unmatched `SLUS_007.92` functions has 19
entries at `--near 40`, the closest at 5 diffs.

Treat the recorded diff count as a hint, not as a measurement: a positional diff
misreports every instruction after an insertion or deletion as differing.  Aligning
the two instruction streams first (`difflib` over a normalised spelling) turns
"27 diffs" into "one rotated instruction", which is what `tools/align_diff.py`
does:

```bash
python3 tools/align_diff.py func_8007BF24 --all-opts    # score a function over the flag matrix
python3 tools/align_diff.py func_8007BF24 --show-all    # print the whole aligned listing
```
Idioms that have resolved other near-misses (re-apply before rewriting logic):
0. **Materialised symbol base.** cc1 folds every constant symbol access into
   `%lo(SYM+N)($at)` unless the accesses read as *struct member references*:
   declaring `extern struct S_8011A390 { s16 f_00; s8 f_02; char _pad_03[0x4F];
   s16 f_52; ... } D_8011A390;` and writing `D_8011A390.f_52 = 10;` makes cc1
   keep the address in a general register and use it as the base for every
   access, which is what `func_80065F98` needed. 154 unmatched `CIV2.EXE`
   functions contain this shape, so it is by far the most valuable of these
   rules. A plain `u8 *p = SYM;` pointer does *not* trigger it, and neither does
   a single-member struct.
0b. **`goto` before `return`.** `var = 0; if (c) { ...; var = x; } return var;`
   constant-folds the pre-loop copy of the return value and materialises `zero`,
   while the retail code keeps a register copy in the branch delay slot. Routing
   the loop exit through a label (`if (...) { ...; goto end; } end: return var;`)
   reproduces both the copy and the loop-exit branch polarity (`func_8007D750`).
0c. **`s32` temporaries around a truncated halfword subtraction.** m2c renders
   the retail `lh`/`lh`/`subu`/`sll`/`sra` sequence as `(s32)(s16)(A - B)`, but
   cc1 then folds the sign-extending loads away and emits `lhu` + shifts
   instead. Assigning the two loads to `s32` variables first keeps the `lh`
   loads: `var_a0 = *p; var_a1 = *q; x = (s16)(var_a0 - var_a1);`
   (`func_800929B8`, `func_80092164`, `func_800B1C78`).
0d. **Stack-object size.** m2c guesses a single word for any local whose address
   is passed to a callee (`M2C_UNK sp10;`), which shrinks the frame. The retail
   frame pins the real size down: the object runs from its own `$sp` offset up
   to the lowest saved-register slot, so `sp10[250]` (0x3E8 bytes) and
   `sp18[0xC]` (0x30 bytes) are what `func_80043F10` and `func_800A4828`
   actually allocate. `tools/m2c_variants.py` applies this automatically.
0e. **Signed comparison instead of a bit test.** `if (x & 0x8000)` emits
   `andi` + `beqz`; the retail `sll`/`bgez`/`sra` is `if (x < 0)` with `x`
   declared `s16` (`func_8001BA5C`).
0f. **`u8` constants are not `s8` constants.** `D_8012C897 = -76;` through an
   `s8` field assembles to `addiu $v0,$zero,-0x4C`, but the retail
   `addiu $v0,$zero,0xB4` is `0xB4` stored through a `u8` field
   (`func_800270FC`).
0g. **Reusing one index temporary for two index computations** instead of
   letting m2c declare `temp_v1` and `temp_v1_2` keeps cc1 from splitting the
   value across two registers (`func_800270FC`).
0h. **Update the field in place.** m2c renders a retail read-modify-write as a
   temporary assigned in each branch plus one store afterwards
   (`var_v0 = FIELD | 2; ... FIELD = var_v0;`). cc1 only shares the load and the
   store when the compound form is written: `FIELD |= 2;` / `FIELD &= ~2;`.
   The lifted spelling also reverses the operands of the generated `and`/`or`
   (`and $v0,$v1,$v0` with the constant built in `$v0`, instead of the retail
   `and $v0,$v0,$v1`). `tools/m2c_variants.py` folds this automatically, which is
   how `func_800986D0` was found (`func_800A2910`, `func_800A29BC`).
0i. **Array subscript instead of pointer arithmetic (`$at` indexing).** m2c
   renders a variable index off a global as `*(T *)(((s8 *)&SYM) + EXPR)`. cc1
   keeps that pointer arithmetic as written -- it emits the same three
   instructions but *without* the `%lo` relocation that the assembler turns into
   the retail `lui $at,%hi(SYM)` / `addu $at,$at,$rX` / `lb $rd,%lo(SYM)($at)`
   sequence -- and it evaluates the terms in the opposite order. Writing the
   access as an array subscript (`SYM[EXPR]`, declared `extern T SYM[];`) fixes
   both. 407 unmatched drafts carry the shape. `tools/m2c_variants.py`'s
   `arrindex` pass does the rewrite (only when every access to the symbol agrees
   on the type and the byte offset is literally `X * sizeof`) and `addrfirst`
   moves a global-address term to the front of its addition chain, which is the
   companion fix the same functions need (`func_800B8E8C`).
0j. **Read-modify-write through a computed pointer.** `p = base + a*4 + k;
   *p &= ~0x10;` evaluates the two index terms in the wrong order and picks the
   wrong registers; splitting it so that the pointer keeps only the invariant
   part and the remaining term becomes a subscript (`p = base + k;
   p[a] &= ~0x10;`) reproduces both (`func_800198E8`).
0k. **m2c's dual induction variables.** m2c keeps a loop's byte offset and its
   element index as two variables (`var_v0 = 0 * 4; ... var_v0 = var_v1 * 4;`).
   The retail loop has a single induction variable and scales it in the body, so
   the extra variable moves the `sll` into the branch delay slot and leaves a
   dead `addu` at the loop head. The `foldind` pass folds the offset back into
   the index (`func_80042938`, `func_8007EF70`, `func_800B1100`,
   `func_800D9460`).
0l. **Scalar read-modify-write -> array element.** `SYM += 1;` on a scalar
   global makes cc1 materialise the address twice and fold the first copy into
   the load; `SYM[0] += 1;` with `extern T SYM[];` keeps one address in a
   register for both accesses, which is what the retail build has
   (`func_80098CB8`, `rmwarr` pass).
0n. **A constant store reveals nothing about its width to m2c.** Storing the
   constant `0` into `D_8011A564 + i * 2` is decoded as a 32-bit `sw` because the
   value carries no type, while the retail instruction is a 16-bit `sh`. Declaring
   the symbol as `extern s16 D_8011A564[];` and writing `D_8011A564[i] = 0;` fixes
   the width *and* re-creates the `$at`-indexed access shape at the same time
   (`func_80077AF0`, matched at `-O1 -G0`). The general rule: when a draft's only
   diff is the width of a load or store of a constant, take the width from the
   retail instruction rather than from the m2c draft.
0m. **The retail source really is plain C.** Several "unmatchable" near-misses
   were register-order artefacts of *one* spelling choice rather than of the
   logic; before rewriting an expression, check the near-miss queue for the same
   `s0`/`s1` swap in a matched function. Conversely, a diff that looks like a
   register-allocation coin flip can be a structural difference in disguise
   (`func_800198E8` shows the same instruction count and the same registers, only
   the operand order of one `addu` differs).

0p. **Array subscript for a global used as a call argument.** m2c renders
   `func(&SYM[EXPR], &SYM2[EXPR2])` as `(EXPR) + (void *)&SYM` arithmetic on the
   address.  For `func_8007BF24` that spelling made cc1 evaluate the second call's
   base before the index chain, so the draft was one rotated `addiu` away from the
   retail bytes.  Declaring the global as `extern u8 SYM[];` and writing the
   arguments as `&SYM[EXPR]` reproduces the retail schedule exactly -- and the
   rewrite is needed for *call arguments*, which `tools/m2c_variants.py`'s
   `arrindex` pass does not touch (it only rewrites load/store shapes and only
   when the byte offset is literally `X * sizeof`).
0q. **Invert the condition and return early.** m2c lifts a two-armed `if` into
   `if (cond) { return A; } return B;` with the arms in the order they appear in
   the retail *layout*.  When the retail layout is the other way round --
   `func_800B4560` has the short arm first in the source and the long arm after a
   `j` -- the draft compiles to the same instructions in a different order.
   Writing the test inverted (`if (x == 1) { return arg1; }`) puts the arms back
   where they belong.  Both spellings are three lines apart in the source and the
   difference is invisible in the m2c output, so try the flip before rewriting
   logic.
0s. **m2c can drop a call's arguments.** `func_800808E4` opens with
   `func_800983DC(arg0, arg1)` in the retail build, but m2c printed the call with
   *no* arguments -- it only ever saw `$v0` read, so it inferred an empty parameter
   list and silently removed the argument setup.  The call sites' `addu $s5,$a0,$zero`
   / `addu $s4,$a1,$zero` in the retail prologue looked like "save this argument
   across the call" (they are, because the values are used again in the loop), which
   is exactly why the draft's instruction sequence was still the right length and
   the mistake only showed up as a register rotation.  When a near miss differs only
   in which callee-saved register holds an incoming argument, check whether the
   draft is passing that argument at all.
0t. **Widen an assignment to stop cc1 narrowing it.** `func_80029978` is 386
   instructions and the draft differed in exactly one: retail has
   `addiu $v0,$v0,0xA0`, the draft `addiu $v0,$v0,-96`.  The value
   (`field * 0x10 + 0xA0`) is stored through a *byte* pointer, so cc1 narrowed the
   addition to QImode and re-canonicalised the constant into the signed range --
   same low byte, different immediate.  Assigning the sum to a declared local first
   (`temp_v0 = ...; SYM = temp_v0;`) keeps the arithmetic in a wider mode and
   reproduces `+0xA0`.  Any spelling that hides the narrowing (a cast, a mask, an
   explicit pointer store) leaves the `-96` fold in place.
0u. **An incoming register that C cannot name needs an asm output.** `func_800E026C`
   is eight instructions that read `$s1` (a pointer the caller leaves there), zero a
   0x400-halfword buffer through it and return -- there is no C spelling for "read a
   callee-saved register the caller filled in": a *file-scope* `register ... asm("s1")`
   reproduces it, but gcc rejects one that follows any function definition and
   reserving `$s1`/`$v0` for the whole translation unit would rewrite every other
   function in the file.  The working spelling binds a **local** register variable and
   copies into it from an asm output: `register s16 *var_v0 asm("$2");` plus
   `__asm__("addu %0, $s1, $zero" : "=r" (var_v0));`.  The asm text is emitted
   verbatim, the register variable keeps the value in `$v0` for the rest of the body,
   and nothing is reserved globally.
0v. **A repeated read in retail is a `volatile` read in the source.** `func_800CEAA8`
   is a case-insensitive `strcmp`: retail loads `lbu $v0, 0x0($a1)` for the loop's
   null test *and* loads `lbu $a2, 0x0($a1)` again inside the body, i.e. the same byte
   read twice.  cc1 remembers the value (so the draft replaced the second load with a
   register move) unless the read is spelled `*(volatile u8 *)var_a1` -- which also
   keeps the two locals `s32` instead of m2c's `u8`, and that is what makes cc1 emit
   the `andi ...,0xFF` before the `sltiu`.  Look for a duplicated load when a draft
   differs only by "load vs move".
0w. **A missing loop increment (or a wrong local size) can still align.** Two
   traps the instruction aligner hides:
   - `func_80095A10` scores as a 2-instruction difference, but m2c had *dropped*
     `var_a1 += 1` from the copy loop entirely -- the loop was the right length only
     because the draft also materialised the source address with an extra `addiu`.
     Read the source against the disassembly before trusting a small edit distance.
     That function's source is also a raw literal (`var_a1 = (u8 *)0x801A0000;`):
     `lui $a1, 0x801A` with no `addiu` only happens when the low half is known to be
     zero, which a symbol reference never is.
   - `func_800CDD74` looked like a 48-byte frame difference (`addiu $sp,-0x40` vs
     `-0x70`) with everything else identical.  The only problem was m2c's
     `M2C_UNK sp20;` -- a 4-byte local where retail has a 56-byte one, so cc1 put the
     saved registers where retail keeps the buffer.  Sizing it (`u8 sp20[0x38];`, with
     the call sites passing the array) reproduces the frame exactly.  A frame whose
     *offsets* all match but whose size does not is this bug, not a codegen one.
     `func_800DE1C8` is the same bug one level deeper: m2c named the local `sp118`
     after the *address* it saw (`addiu $a0,$sp,0x118`), but the frame is only
     explained by a 0x110-byte buffer based at `$sp+0x18` of which the passed
     address is a sub-object -- `u8 sp118[0x110];` plus `&sp118[0x100]`.
0x. **Commutative operands are not normalised.** `addu $a0,$a0,$s1` and
   `addu $a0,$s1,$a0` are the same value but different opcodes, and cc1 picks the
   order from the source.  Two near misses this batch turned on it:
   `func_800B072C` matched only after the else-branch index was written
   `(arg0 * 0x578) + (arg1 * 6)` (the earlier statement keeps `(arg1 * 6) + ...`),
   and `func_800D8A1C` needed `(var_s0 * 4) + (s32) arg0` for one sum and
   `(s32) ((var_s0_2 * 0x94) + (s32) var_s1)` for the other -- the `(s32)` cast is
   what stops cc1 from quietly rewriting the operand order.  When a candidate and
   the target agree instruction-for-instruction except for the *order of two
   registers* in an `addu`, swap the source operands (a cast is often needed to make
   the swap stick).
   `func_800D8A1C` also shows the matching hoist: the loop-invariant
   `var_s1 = &D_80122C38;` has to be written as a local before the loop, because
   `-O1` does not lift the address out of the loop on its own.
0y. **A register the allocator refuses to pick can be *pinned*.** cc1 assigns
   local pseudos by use-count priority, not by name, so a draft that is
   instruction-for-instruction identical except for *which* register holds a local
   can be unfixable by reordering the source.  The escape hatch is a pinned local:

   ```c
   void func_8001B6C0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
       register s32 var_s3 __asm__("$19");   /* $s3 */
       register s32 var_s0 __asm__("$16");   /* $s0 */
       ...
       var_s3 = arg0;                        /* -> addu $s3, $a0, $zero */
   ```

   The first *source* assignment of `x` lands in the pinned register; later uses
   only stay there while they are simple (a `x *= 2` re-loads the allocator's own
   register -- see idiom 0m and the eight failed `func_800146C8` variants).  Two
   matches came from this: `func_8001B6C0` (four pinned copies, plus the callee
   prototypes moved *inside* the body to dodge a clashing external declaration) and
   `func_800CAC4C`, where pinning only the struct base
   (`register s8 *temp_a0 __asm__("$4");`) was enough to swap the pointer and the
   return accumulator into retail's `$a0` / `$a1`.
0z. **A hoisted subexpression is a named local.** `func_80099828` is 50
   instructions and the draft differed in exactly one window: retail emits
   `lh $v1,0x236($s0); nop; subu $s1,$s1,$v1` *between* the `jal` and the rest of
   the first statement, i.e. `arg4 - field_0x236` is computed before it is used.
   Splitting the single-expression draft into
   `temp_v0 = func_800CEC5C(arg3 - field_0x234); temp_s1 = arg4 - field_0x236;`
   and then using the two temps reproduces retail's order exactly -- `-O1` does not
   hoist the load on its own, but it does keep a source-level temp where the source
   puts it.
0aa. **A struct type has to be bigger than the window you touch.** cc1 keeps a
   global's address in a general register only while it is worth it, and "worth it"
   depends on the size of the *type*, not on how many members you assign.  Typing
   `D_8011FADC` as `{ s32 unk0; s32 unk4; }` (8 bytes) makes every
   `D_8011FADC.unkN = 0;` fold to its own `lui $at / sw $zero, %lo(SYM+N)($at)`
   pair -- even when the same statement sequence also needs `&D_8011FADC` for a
   pointer subtraction.  Padding the struct out (`{ s32 unk0; s32 unk4;
   s8 pad[0x44]; }`) flips cc1 to the retail shape: one `lui/addiu` base, then
   `sw $zero, 0x0($v0)` and `sw $zero, 0x4($v0)` through it, then the base is
   reused for `addiu $v0,$v0,-0x44`.  So when retail reuses one base for several
   adjacent member stores and the draft re-materialises the address, *grow the
   struct* before trying to hand-manage a pointer local -- with a small type no
   pointer spelling helps (a `p = &D; p[0]=0; p[1]=0;` local folds both stores
   identically, and only the first store of an array-based `s8 *p = D;` keeps the
   register).
0ab. **A parameter that cc1 promoted to a callee-saved register can be dragged back
   into its incoming `$aN`.** Two faces of the same effect:
   - `func_800B8AD0`: the early-exit path returns `arg2`, which lives in a
     call-saved register because it is live across calls.  cc1 only hands the
     result back in that register when *the parameter itself is reassigned*
     (`arg2 = func_800B7D48(...); return arg2;`).  A dedicated `res` local --
     initialised or not -- gets a fresh `$s7` and grows the frame by two words.
   - `func_800A83F0`: the tail block tests, stores and passes `arg1` four times and
     retail does all of it through `$a1`, with `addu $a1,$s1,$zero` sitting in the
     delay slot of the `beqz $s1` that guards the block.  Naming `arg1` directly
     keeps `$s1` everywhere; writing `var_a1 = arg1;` as the *first statement of
     the block* makes cc1 copy it into `$a1` (dbr_schedule then lifts that copy
     into the branch delay slot) and every later use of `var_a1` in the block --
     the `blez`, both stores, and the outgoing call argument -- reads `$a1`.
   General rule: the register a value ends up in follows the *source variable*,
   so reassigning a parameter (or introducing a local for it) is the lever when a
   block's register choice disagrees with the rest of the function.

0r. **A varargs stub is `RET f(s32 arg0, ...) {}`.** GCC emits exactly the four
   `sw $a0..$a3` register-save slots and a `jr $ra` for a body-less variadic
   function, which is the whole body of `func_80014514` and `func_8001452C`.  m2c
   cannot see the `...` and prints a four-parameter prototype, so the draft compiles
   to two instructions and never reaches the queue (its compiled size is 0x10 bytes
   short).  This is the first entry the new `--size-tolerance` mode finds.

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

### 5b. Restoring a Build Environment from Scratch

Only the decompilation sources are tracked; the compiler, the disc and the generated linker scripts are not. `tools/restore_env.sh` performs the whole restoration in one command on a fresh machine (or after a sandbox reset): it installs GCC 2.7.2 PSX + binutils + p7zip + the Python packages, generates the splat linker scripts, downloads the retail disc zip (handling Google Drive's interposition page), extracts `SLUS_007.92` / `CIV2.EXE` and verifies them against `config/us/*.sha1`, then re-applies `tools/splice_matched.py` so `src/*/game.c` is in its spliced state. Pass `ROM=/path/to/disc.cue` to skip the download; the image is unpacked into `${WORK:-/var/tmp/rom}` so that the ~460 MB track never lands inside the repository tree.

`tools/extract_disc.sh` converts track 1 from raw 2352-byte sectors to 2048-byte
sectors and then reads the two executables straight out of the ISO 9660 directory
tree with a small Python walker. That walker is not a fallback for convenience:
the disc's primary volume descriptor claims a `VolumeSpaceSize` of 215,324 sectors
(the whole CD, audio track included) while the data track only holds 205,798, so
`7z` reports `Unexpected end of archive` and extracts nothing at all. The script
still tries `7z` first and only walks the tree when the files did not appear.

### 6. Automated Matching Pipeline

A hand-matched function is not spliced out of `/tmp/matched_<bin>.pkl`: that pickle is
scratch (every sweep rewrites it) and it disappears whenever /tmp is wiped, so
hand-matches are recorded in **`/home/user/bank.json`** — a workspace-backed store that
`tools/splice_matched.py` reads *before* the pickle.  A function gets into the bank only
through `tools/bank_add.py`, which runs `tools/try_match.py` over the draft itself and
refuses to record anything that is not byte-for-byte identical:

```bash
python3 tools/bank_add.py draft.c func_800DD590 --opt "-O1 -G8"   # verify + record
python3 tools/bank_add.py --list                                  # what is banked
python3 tools/bank_add.py --check                                 # re-verify every entry
python3 tools/splice_matched.py && make -j2 && make compare
```

The end-to-end sweep is three stages, all re-runnable:

```bash
# only the functions that are still unmatched, so the cache is cheap to rebuild
python3 tools/gen_m2c_cache.py --bin civ2 --jobs 8 --only-file /tmp/unmatched_civ2.txt
python3 tools/auto_match_sweep.py \
    --bin civ2 --only-file /tmp/unmatched_civ2.txt \
    --opts="-O1 -G8" --opts="-O2 -G8" --opts="-O1 -G0" --opts="-O2 -G0" \
    --near 10 --out /tmp/matched_civ2.pkl         # compile + byte-compare, keep 100% matches
python3 tools/splice_matched.py                   # splice verified bodies into src/*/game.c
make -j$(nproc) && make compare                   # the only result that counts

# second pass: drafts rewritten into the spellings cc1 needs (see section 3b)
python3 tools/m2c_variants.py --bin civ2
python3 tools/auto_match_sweep.py --bin civ2 --only-file /tmp/unmatched_civ2.txt \
    --cache /tmp/m2c_cache_civ2_v2.pkl --enhanced \
    --opts="-O1 -G8" --opts="-O2 -G8" --opts="-O1 -G0" --near 10 \
    --out /tmp/matched_civ2_v2.pkl
```

Both sweeps are additive and safe: a rewritten draft is only ever *one more
candidate*. If it does not compile to the retail bytes it is discarded, so a
wrong rewrite cannot regress the build. The variant pass currently contributes
7 `CIV2.EXE` matches that the literal m2c output misses: `func_80043F10`,
`func_800466E4`, `func_800B8DC0`, `func_800C6EB4` (stack-object and halfword
passes) and `func_800986D0` plus the `func_800A2910` / `func_800A29BC` pair
(read-modify-write pass).

Two options widen what the sweep can score at all, and both made the difference
between "no new matches" and the batch below:

* **`tools/draft_repair.py` (wired into the sweep's compile step).** 184 of the 675
  unmatched `CIV2.EXE` drafts never reached the byte comparison because cc1 rejected
  them, and 85 of those fail for reasons that have nothing to do with the function:
  m2c prints a full prototype for every callee while the call sites supply fewer
  arguments (legal under O32, a constraint violation in C89 -- the splicer already
  emits an unprototyped declaration for the same reason), and m2c occasionally uses a
  symbol it never declared (`sp`, `saved_reg_fp`, a `func_*` seen first in a delay
  slot).  The repair rewrites those declarations, retypes the integer locals m2c
  dereferences, sizes a bare `sp` from the retail prologue, and is only accepted when
  the repaired draft *compiles*; a match still has to be byte-exact, so a wrong
  repair can only cost one compile.  491 of 675 drafts already compiled, 85 more
  compile after repair, and 99 stay broken (mostly `void` dereferences).
* **`--size-tolerance BYTES`.** The byte comparison used to `continue` on any draft
  whose compiled length differed from the retail function, so a draft that is
  structurally right but one instruction short could never be seen: `func_8001452C`
  (a varargs stub m2c renders as a four-argument prototype, 16 bytes short) and
  `func_800B4560` (5 diffs at a 4-byte-short draft) are both invisible to a
  same-size-only sweep.  Such drafts cannot be exact matches by construction, so the
  sweep records them separately (`--size-near-out`, one `<diffs> <bytes-delta> <flags>
  <name>` per line) after scoring them the same way.

The repair step paid for itself immediately: with it enabled the same sweep found
**5 functions that no previous sweep could even score** -- `func_800A375C`,
`func_800B9350` (`-O2 -G8`), `func_800C7904`, `func_800CB5A4` and `func_800DF0DC` --
plus `func_8008FADC`, which matches 100% as C but is held back until its `.rodata`
blob is migrated out of the function's splat file.

The `.rodata` that `migrate_rodata_to_functions: True` keeps inside a function's own
splat file (`D_80011488`, a `"+"` string plus a word table, for `func_8008FADC`; the jump
tables `jtbl_8001166C` and `jtbl_80011934` for `func_800916F0` / `func_80094298`) needs no
separate `.rodata` file after all, because it is simply the *C* form of the same data:
cc1 emits a function's string literals and switch tables as a `.rdata` block immediately
after the code that uses them, and `maspsx` turns each `.rdata` into a `.section .rodata`
in place — so splicing the C body lands the bytes at the original point of the `.rodata`
stream.  Three details decide whether that stays byte-exact:

* **m2c's escaped string literals are octal-ambiguous.**  Its rendering of `D_80011488`
  contains `\b\01\00\03\0`, which cc1 re-reads as the octal escapes `\01`, `\00`, `\03`
  and silently collapses three table entries into one.  Re-escaping every byte as a
  three-digit octal escape (`\053\000\000…`) reproduces the 148-byte blob exactly.
* **A string literal carries an implicit NUL**, so a literal of all 148 bytes compiles to
  149 bytes plus 3 of alignment padding (`.rodata` `0x326C → 0x327C`).  The table's own
  last byte is a zero, so the C literal only needs the first 147 bytes and cc1's
  terminator supplies the 148th.
* **cc1 asks for 8-byte alignment on jump tables** (`.align 3`), while the retail tables sit
  directly after 4-aligned blobs (`jtbl_8001166C` at `0x8001166C`, `jtbl_80011934` at
  `0x80011934`) — the original assembler plainly did not pad them.  GNU as does, shifting
  `.rodata` by 4 bytes per table, so `tools/maspsx_wrap.py` now downgrades that one
  directive to `.align 2` (the codegen itself already matched, and the tables' 50 / 52
  entries were verified slot-for-slot against retail before splicing).

Single-function checks go through `tools/try_match.py <draft.c> <func> --bin
civ2 --opt "-O1 -G8"`, which must reproduce the sweep's diff count for the same
draft. It used to append a hard-coded `-G8` *after* `--opt`, so every
`--opt "-O1 -G0"` run was in fact compiled `-G8`: a draft the sweep scored at one
diff looked twenty-seven diffs away locally, and the top of the near-miss list
was not reproducible at all. The default now lives in the flag list and `--opt`
wins.

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
   python3 tools/try_match.py /tmp/func.c func_8001820C --bin slus
   python3 tools/try_match.py /tmp/func.c func_80015A14 --bin civ2
   ```
   If the retail executables are not present locally, use the checked-in machine-code
   comments as the reference while iterating on a draft:
   ```bash
   python3 tools/try_match.py /tmp/func.c func_80015A14 --bin civ2 --source-only
   ```
   `--source-only` compares against the encoded words in the tracked disassembly and does
   not require a ROM copy. It is a development aid, not a substitute for `make compare`
   against the retail executable.
4. Run the lightweight reference-parser regression tests:
   ```bash
   python3 -m unittest discover -s tools/tests
   ```
