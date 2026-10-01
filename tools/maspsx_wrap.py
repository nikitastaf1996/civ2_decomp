#!/usr/bin/env python3
"""
Wrapper around maspsx for Civilization II (PS1) decompilation.
1. Re-places deferred `.ent func_XXXX ... .end func_XXXX` blocks (which `cc1 -G8`
   emits at the end of the assembly file) back at their exact `.globl func_XXXX`
   declaration sites so function ordering matches `INCLUDE_ASM` blocks.
2. Substitutes `/* @O2 */` function blocks compiled with `cc1 -O2 -G8`.
3. Injects per-function `# MASPSX_GPREL:` directives before `.ent func_XXXXXXXX`.
4. Runs `maspsx.py --aspsx-version=2.56 --expand-div -G8`.
"""
import argparse
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def get_gprel_syms(binary: str, func_name: str):
    asm_path = os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game", f"{func_name}.s")
    if not os.path.exists(asm_path):
        return []
    text = open(asm_path).read()
    return sorted(set(re.findall(r"%gp_rel\(([^)]+)\)", text)))


def extract_ent_blocks(asm_lines):
    blocks = {}
    remaining = []
    cur_name = None
    cur_lines = []
    for line in asm_lines:
        if line.startswith("\t.extern\t"):
            continue
        m_ent = re.match(r"^\s*\.ent\s+(\w+)", line)
        if m_ent:
            cur_name = m_ent.group(1)
            cur_lines = [line]
        elif cur_name is not None:
            cur_lines.append(line)
            if re.match(rf"^\s*\.end\s+{cur_name}\b", line):
                blocks[cur_name] = cur_lines
                cur_name = None
                cur_lines = []
        else:
            remaining.append(line)
    return blocks, remaining


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--bin", choices=["slus", "civ2"], required=True)
    ap.add_argument("--c-file", required=True)
    ap.add_argument("--in-s", required=True)
    ap.add_argument("--out-s", required=True)
    args = ap.parse_args()

    c_text = open(args.c_file).read()
    o2_funcs = set(re.findall(r"/\*\s*@O2\s*\*/\s*\n(?:[A-Za-z0-9_ *]+?\b)(func_[0-9A-F]{8})\b", c_text))

    s_lines = open(args.in_s).read().splitlines()
    blocks, base_lines = extract_ent_blocks(s_lines)

    if o2_funcs:
        cc1 = os.path.join(ROOT, "bin", "gcc-2.7.2-psx", "cc1")
        inc = os.path.join(ROOT, "include")
        cmd = (
            f"mipsel-linux-gnu-cpp -P -undef -Wall -lang-c -nostdinc -I{inc} "
            f"-D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips "
            f"-Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US {args.c_file} | "
            f"{cc1} -quiet -w -O2 -G8 -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -o - -"
        )
        r = subprocess.run(cmd, shell=True, capture_output=True, text=True, check=True)
        o2_asm = re.sub(r"\$L(\d+)\b", r"$LO2_\1", r.stdout)
        o2_blocks, _ = extract_ent_blocks(o2_asm.splitlines())
        for fn in o2_funcs:
            if fn in o2_blocks:
                blocks[fn] = o2_blocks[fn]

    annotated_lines = []
    for line in base_lines:
        annotated_lines.append(line)
        m_globl = re.match(r"^\s*\.globl\s+(\w+)", line)
        if m_globl:
            fn = m_globl.group(1)
            if fn in blocks:
                gprel = get_gprel_syms(args.bin, fn)
                annotated_lines.append("\t.text")
                annotated_lines.append(f"# MASPSX_GPREL: {' '.join(gprel)}")
                annotated_lines.extend(blocks[fn])

    maspsx_py = os.path.join(ROOT, "external", "maspsx", "maspsx.py")
    r = subprocess.run(
        [sys.executable, maspsx_py, "--aspsx-version=2.56", "--expand-div", "-G8"],
        input="\n".join(annotated_lines) + "\n",
        capture_output=True,
        text=True,
        check=True,
    )
    with open(args.out_s, "w") as f:
        f.write(r.stdout)


if __name__ == "__main__":
    main()
