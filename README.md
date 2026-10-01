# Civilization II (PS1) Matching Decompilation (`SLUS-00792`)

Byte-for-byte matching decompilation of **Sid Meier's Civilization II** for the Sony PlayStation (NTSC-U release, `SLUS-00792`, built November 16, 1998).

Both retail PS-X executables on the disc are split, rebuilt from C + assembly, and verified **100% byte-for-byte identical** via `make compare`:

| Executable | Role | Retail Size | SHA-1 | Game Functions | PsyQ 4.2 SDK Symbols | Matched C Functions | Total Accounted |
| :--- | :--- | :---: | :--- | :---: | :---: | :---: | :---: |
| **`SLUS_007.92`** | Title / Setup / Intro Movie Player | 290,816 B (`0x47000`) | `362a030a231fc5952010909faf848a8a461bbb3c` | 208 | 375 | **73 / 208 (35.1%)** | **448 / 583 (76.8%)** |
| **`CIV2.EXE`** | Main Strategy Game Engine | 1,351,680 B (`0x14A000`) | `919bad81720f9b0e129fd5f10fb155cd7aa3c98c` | 1,427 | 390 | **565 / 1,427 (39.6%)** | **955 / 1,817 (52.6%)** |
| **Combined** | **Full Game** | **1,642,496 B** | **100% Byte-Identical** | **1,635** | **765** | **638 / 1,635 (39.0%)** | **1,403 / 2,400 (58.5%)** |

*(Note: 636 of the 638 matched C functions are spliced directly into `src/slus/game.c` and `src/civ2/game.c`; 2 jump-table functions in `CIV2.EXE` — `func_800916F0` and `func_80094298` — also match 100% and await `.rodata` jump-table migration.)*

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

---

## Building & Verifying

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
