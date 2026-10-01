#!/usr/bin/env python3
"""Compile a C file and diff its functions against the retail binary (SLUS_007.92 or CIV2.EXE).
Usage: tools/try_match.py <c_file> [func_name ...] [--bin slus|civ2] [--opt FLAGS]
"""
import argparse
import os
import re
import struct
import subprocess
import sys
import tempfile
from elftools.elf.elffile import ELFFile

D = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

ap = argparse.ArgumentParser()
ap.add_argument("c_file")
ap.add_argument("funcs", nargs="*")
ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
ap.add_argument("--opt", dest="opt_flags", default="-O1")
args = ap.parse_args()

src = args.c_file
want = set(args.funcs)
binary = args.binary
opt_flags = args.opt_flags

exe_name = "SLUS_007.92" if binary == "slus" else "CIV2.EXE"
ob = open(f"{D}/disks/us/{exe_name}", "rb").read()[0x800:]
ovram = 0x80010000

w = os.path.join(tempfile.mkdtemp(prefix="try_match_"), "draft")
cc1 = f"{D}/bin/gcc-2.7.2-psx/cc1 -quiet {opt_flags} -G8 -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -w"
r1 = subprocess.run(
    f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{D}/include -I{D}/external/psyq_headers/psyq_lib47/include "
    f"-D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM {src} > {w}.i && "
    f"{cc1} -o {w}.cc1.s {w}.i && "
    f"python3 {D}/tools/maspsx_wrap.py --bin {binary} --c-file {src} --in-s {w}.cc1.s --out-s {w}.s && "
    f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {w}.o {w}.s",
    shell=True,
    capture_output=True,
    text=True,
)
if r1.returncode:
    print(r1.stderr)
    sys.exit(1)

e = ELFFile(open(f"{w}.o", "rb"))
text = e.get_section_by_name(".text").data()
symtab = e.get_section_by_name(".symtab")
rel = {}
rs = e.get_section_by_name(".rel.text")
if rs:
    for r in rs.iter_relocations():
        s = symtab.get_symbol(r["r_info_sym"])
        rel[r["r_offset"]] = (r["r_info_type"], s.name, s["st_info"]["bind"])

fn_offs = sorted(
    (s["st_value"], s.name)
    for s in symtab.iter_symbols()
    if s["st_info"]["type"] == "STT_FUNC" and s["st_info"]["bind"] == "STB_GLOBAL"
)
asm_dir = f"{D}/asm/us/{binary}/nonmatchings/game"

any_diff = False
for idx, (off, name) in enumerate(fn_offs):
    if want and name not in want:
        continue
    end = fn_offs[idx + 1][0] if idx + 1 < len(fn_offs) else len(text)
    while end > off and text[end - 4 : end] == b"\0\0\0\0":
        end -= 4
    cand = text[off:end]
    sf = os.path.join(asm_dir, f"{name}.s")
    if not os.path.exists(sf):
        print(f"{name}: no .s file at {sf}")
        any_diff = True
        continue
    st = open(sf).read()
    m = re.search(r"/\* [0-9A-F]+ ([0-9A-F]{8}) ", st)
    addr = int(m.group(1), 16)
    tl = [
        re.sub(r"\s+", " ", re.sub(r".*\*/\s+", "", l)).strip()
        for l in st.splitlines()
        if "/*" in l and not l.startswith(".set")
    ]
    tsize = len(tl) * 4
    while len(cand) < tsize and off + len(cand) < len(text):
        cand += text[off + len(cand) : off + len(cand) + 4]
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
    n = max(len(cand), tsize) // 4
    diffs = []
    for k in range(n):
        ca = struct.unpack_from("<I", cand, 4 * k)[0] if 4 * k < len(cand) else None
        ta = (
            struct.unpack_from("<I", ob, addr - ovram + 4 * k)[0]
            if 4 * k < tsize
            else None
        )
        same = ca is not None and ta is not None
        if same and (off + 4 * k) in rel:
            rtype, sym_name, sym_bind = rel[off + 4 * k]
            tl_k = tl[k] if k < len(tl) else ""
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
            (same, dl[k].expandtabs(1) if k < len(dl) else "", tl[k] if k < len(tl) else "")
        )
    nd = sum(not s for s, _, _ in diffs)
    print(f"{name}: {'MATCH' if nd == 0 else f'{nd} diffs'} (size {len(cand):#x} vs {tsize:#x})")
    if nd:
        any_diff = True
        for s, c_s, t_s in diffs:
            print(f"{'  ' if s else '**'} {c_s:<38} | {t_s}")

if any_diff:
    sys.exit(1)
