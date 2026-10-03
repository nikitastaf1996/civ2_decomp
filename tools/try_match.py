#!/usr/bin/env python3
"""Compile a C file and diff its functions against Civilization II's MIPS code.

By default, reference words come from the retail executable in ``disks/us``.
``--source-only`` instead uses the encoded instruction words in the checked-in
splat assembly, which lets contributors iterate without a local ROM copy. A
source-only match is useful feedback, but ``make compare`` remains the final
byte-for-byte verification against the executable.

Usage: tools/try_match.py <c_file> [func_name ...] [--bin slus|civ2]
       [--opt FLAGS] [--source-only]
"""
import argparse
import os
import re
import struct
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Splat's instruction comments store the virtual address and the four bytes as
# printed in the little-endian file (for example, ``10008228``). Convert those
# bytes to the same little-endian integer representation used by ELFFile.
INSTRUCTION_RE = re.compile(
    r"^\s*/\*\s+[0-9A-Fa-f]+\s+([0-9A-Fa-f]{8})\s+([0-9A-Fa-f]{8})\s*\*/\s*(.*?)\s*$"
)


def parse_target_instructions(asm_text, name):
    """Return ``(address, word, assembly)`` tuples for one function's body.

    Function files can contain jump tables or other ``.rodata`` before the
    function itself. Restrict parsing to the matching ``glabel``/``endlabel``
    block so those data words cannot be mistaken for instructions.
    """
    start = re.search(rf"(?m)^glabel\s+{re.escape(name)}\s*$", asm_text)
    if not start:
        raise ValueError(f"missing glabel for {name}")

    tail = asm_text[start.end() :]
    end = re.search(rf"(?m)^endlabel\s+{re.escape(name)}\s*$", tail)
    if not end:
        raise ValueError(f"missing endlabel for {name}")

    instructions = []
    body = tail[: end.start()]
    for line in body.splitlines():
        match = INSTRUCTION_RE.match(line)
        if match:
            address = int(match.group(1), 16)
            word_bytes = bytes.fromhex(match.group(2))
            word = struct.unpack("<I", word_bytes)[0]
            assembly = re.sub(r"\s+", " ", match.group(3)).strip()
            instructions.append((address, word, assembly))

    if not instructions:
        raise ValueError(f"no encoded instructions found for {name}")

    first_address = instructions[0][0]
    for index, (address, _word, _assembly) in enumerate(instructions):
        if address != first_address + index * 4:
            raise ValueError(f"non-contiguous instruction addresses in {name}")

    size_match = re.search(
        rf"(?m)^nonmatching\s+{re.escape(name)}\s*,\s*0x([0-9A-Fa-f]+)\s*$",
        asm_text,
    )
    if size_match:
        declared_size = int(size_match.group(1), 16)
        actual_size = len(instructions) * 4
        if actual_size != declared_size:
            raise ValueError(
                f"{name} declares size 0x{declared_size:X}, "
                f"but its instruction block is 0x{actual_size:X}"
            )

    return instructions


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("c_file")
    ap.add_argument("funcs", nargs="*")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--opt", dest="opt_flags", default="-O1 -G8")
    ap.add_argument(
        "--source-only",
        action="store_true",
        help=(
            "compare against checked-in asm instruction words instead of "
            "disks/us/<executable> (not a substitute for make compare)"
        ),
    )
    args = ap.parse_args(argv)

    src = args.c_file
    want = set(args.funcs)
    binary = args.binary
    opt_flags = args.opt_flags

    exe_name = "SLUS_007.92" if binary == "slus" else "CIV2.EXE"
    ovram = 0x80010000
    ob = None
    if not args.source_only:
        binary_path = os.path.join(ROOT, "disks", "us", exe_name)
        try:
            with open(binary_path, "rb") as f:
                ob = f.read()[0x800:]
        except OSError as exc:
            ap.error(
                f"cannot read {binary_path}: {exc}; pass --source-only to compare "
                "against the checked-in assembly instead"
            )
    else:
        print(
            "Reference: checked-in assembly words (run `make compare` for final "
            "retail-binary verification)."
        )

    w = os.path.join(tempfile.mkdtemp(prefix="try_match_"), "draft")
    # NB: -G8 used to be appended *after* opt_flags, which silently overrode the -G of
    # every "--opt '-O1 -G0'" invocation; the sweep passes the flags through untouched,
    # so a -G0 draft scored 1 diff there could never be reproduced here.  Keep the
    # default in the flag list instead, and let --opt win.
    cc1 = f"{ROOT}/bin/gcc-2.7.2-psx/cc1 -quiet {opt_flags} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -w"
    r1 = subprocess.run(
        f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{ROOT}/include -I{ROOT}/external/psyq_headers/psyq_lib47/include "
        f"-D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM {src} > {w}.i && "
        f"{cc1} -o {w}.cc1.s {w}.i && "
        f"python3 {ROOT}/tools/maspsx_wrap.py --bin {binary} --c-file {src} --in-s {w}.cc1.s --out-s {w}.s && "
        f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{ROOT} -I{ROOT}/include -o {w}.o {w}.s",
        shell=True,
        capture_output=True,
        text=True,
    )
    if r1.returncode:
        print(r1.stderr, file=sys.stderr)
        return 1

    try:
        from elftools.elf.elffile import ELFFile
    except ImportError as exc:
        print(f"pyelftools is required to inspect the compiled object: {exc}", file=sys.stderr)
        return 1

    with open(f"{w}.o", "rb") as f:
        e = ELFFile(f)
        text = e.get_section_by_name(".text").data()
        symtab = e.get_section_by_name(".symtab")
        rel = {}
        rs = e.get_section_by_name(".rel.text")
        if rs:
            for r in rs.iter_relocations():
                s = symtab.get_symbol(r["r_info_sym"])
                rel[r["r_offset"]] = (r["r_info_type"], s.name, s["st_info"]["bind"])

        fn_symbols = sorted(
            (s["st_value"], s["st_size"], s.name)
            for s in symtab.iter_symbols()
            if s["st_info"]["type"] == "STT_FUNC" and s["st_info"]["bind"] == "STB_GLOBAL"
        )

        # Keep the ELF open while using its section/symbol tables below.
        asm_dir = os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game")
        any_diff = False
        for idx, (off, symbol_size, name) in enumerate(fn_symbols):
            if want and name not in want:
                continue
            if symbol_size:
                # ELF STT_FUNC sizes include real trailing delay-slot nops. Do not
                # trim zero words: a final nop can be part of the matched function.
                end = min(off + symbol_size, len(text))
            else:
                # Older/hand-written objects may omit st_size; bound those by the
                # next function symbol and remove only trailing alignment padding.
                end = fn_symbols[idx + 1][0] if idx + 1 < len(fn_symbols) else len(text)
            cand = text[off:end]
            if not symbol_size:
                while len(cand) >= 4 and cand[-4:] == b"\0\0\0\0":
                    cand = cand[:-4]

            sf = os.path.join(asm_dir, f"{name}.s")
            if not os.path.exists(sf):
                print(f"{name}: no .s file at {sf}")
                any_diff = True
                continue
            with open(sf) as f:
                st = f.read()
            try:
                target_instructions = parse_target_instructions(st, name)
            except ValueError as exc:
                print(f"{name}: invalid assembly reference: {exc}")
                any_diff = True
                continue

            addr = target_instructions[0][0]
            target_words = [word for _address, word, _assembly in target_instructions]
            target_lines = [assembly for _address, _word, assembly in target_instructions]
            tsize = len(target_words) * 4
            if not args.source_only and addr < ovram:
                print(f"{name}: invalid reference address {addr:#x}")
                any_diff = True
                continue

            dl = [
                l.split("\t", 2)[2]
                for l in subprocess.check_output(
                    [
                        "mipsel-linux-gnu-objdump",
                        "-d",
                        f"--start-address={off}",
                        f"--stop-address={off + len(cand)}",
                        f"{w}.o",
                    ],
                    text=True,
                ).splitlines()
                if re.match(r"^\s*[0-9a-f]+:\t", l)
            ]
            candidate_words = (len(cand) + 3) // 4
            n = max(candidate_words, len(target_words))
            diffs = []
            for k in range(n):
                ca = struct.unpack_from("<I", cand, 4 * k)[0] if 4 * k + 4 <= len(cand) else None
                if args.source_only:
                    ta = target_words[k] if k < len(target_words) else None
                else:
                    target_offset = addr - ovram + 4 * k
                    ta = (
                        struct.unpack_from("<I", ob, target_offset)[0]
                        if k < len(target_words) and target_offset + 4 <= len(ob)
                        else None
                    )

                same = ca is not None and ta is not None
                if same and (off + 4 * k) in rel:
                    rtype, sym_name, sym_bind = rel[off + 4 * k]
                    tl_k = target_lines[k] if k < len(target_lines) else ""
                    if rtype == 7 and "%gp_rel(" not in tl_k:
                        same = False
                    elif rtype in (5, 6) and "%gp_rel(" in tl_k:
                        same = False
                    else:
                        mk = 0xFC000000 if (ca >> 26) in (2, 3) else 0xFFFF0000
                        same = (ca & mk) == (ta & mk)
                        if same and sym_bind == "STB_GLOBAL" and sym_name not in tl_k:
                            same = False
                elif same:
                    same = ca == ta
                diffs.append(
                    (
                        same,
                        dl[k].expandtabs(1) if k < len(dl) else "",
                        target_lines[k] if k < len(target_lines) else "",
                    )
                )

            nd = sum(not same for same, _candidate, _target in diffs)
            print(f"{name}: {'MATCH' if nd == 0 else f'{nd} diffs'} (size {len(cand):#x} vs {tsize:#x})")
            if nd:
                any_diff = True
                for same, candidate_line, target_line in diffs:
                    print(f"{'  ' if same else '**'} {candidate_line:<38} | {target_line}")

    return 1 if any_diff else 0


if __name__ == "__main__":
    sys.exit(main())
