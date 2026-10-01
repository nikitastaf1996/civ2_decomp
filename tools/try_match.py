#!/usr/bin/env python3
"""Compile a C file with the project toolchain and compare every function in it
byte-wise against the original (SLUS_007.92 or CIV2.EXE), with relocated
fields masked and verified.

usage: tools/try_match.py [--bin slus|civ2] [--opt FLAGS] draft.c [func ...]
"""
import sys, subprocess, struct, re, os, tempfile, glob
from elftools.elf.elffile import ELFFile

D = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
binary = "civ2"
opt_flags = "-O2"
args = sys.argv[1:]
while args and args[0].startswith("--"):
    if args[0] == "--bin":
        binary = args[1]
        args = args[2:]
    elif args[0].startswith("--bin="):
        binary = args[0].split("=", 1)[1]
        args = args[1:]
    elif args[0] == "--opt":
        opt_flags = args[1]
        args = args[2:]
    elif args[0].startswith("--opt="):
        opt_flags = args[0].split("=", 1)[1]
        args = args[1:]
    else:
        break

src = args[0]
want = set(args[1:])

exe_name = "SLUS_007.92" if binary == "slus" else "CIV2.EXE"
ob = open(f"{D}/disks/us/{exe_name}", "rb").read()[0x800:]
ovram = 0x80010000

w = os.path.join(tempfile.mkdtemp(prefix="try_match_"), "draft")
g_flag = "-G8"
if "--opt" not in sys.argv and not any(a.startswith("--opt=") for a in sys.argv):
    opt_flags = "-O1" if binary == "slus" else "-O2"
cc1 = f"{D}/bin/gcc-2.7.2-psx/cc1 -quiet {opt_flags} {g_flag} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -Wall -Wno-unused"
r1 = subprocess.run(
    f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{D}/include -I{D}/external/psyq_headers/psyq_lib47/include "
    f"-D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM {src} > {w}.i && "
    f"{cc1} -o {w}.s {w}.i", shell=True, capture_output=True, text=True
)
if r1.returncode:
    print(r1.stderr); sys.exit(1)
stxt = open(f"{w}.s").read()
lo_gp, hi_gp = (0x80055250, 0x80055330) if binary == "slus" else (0x801584FC, 0x80159528)
def filt_ext(m):
    sym = m.group(1)
    ma = re.match(r"D_([0-9A-F]{8})$", sym)
    return m.group(0) if (ma and lo_gp <= int(ma.group(1), 16) <= hi_gp) else ""
stxt = re.sub(r"^\s*\.extern\s+(\w+),\s*\d+\s*$", filt_ext, stxt, flags=re.M)
open(f"{w}.s", "w").write(stxt)
cmd = (
    f"python3 {D}/external/maspsx/maspsx.py --aspsx-version=2.56 --expand-div -G8 < {w}.s > {w}.ms.s && "
    f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {w}.o {w}.ms.s"
)
r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
if r.returncode:
    print(r.stderr)
    sys.exit(1)

e = ELFFile(open(w + ".o", "rb"))
text = e.get_section_by_name(".text").data()
rel = {}
rs = e.get_section_by_name(".rel.text")
if rs:
    rel = {x["r_offset"]: x for x in rs.iter_relocations()}
symtab = e.get_section_by_name(".symtab")
syms = sorted([(s["st_value"], s.name) for s in symtab.iter_symbols() if s["st_info"]["type"] == "STT_FUNC"])

symaddr = {}
try:
    for l in open(f"{D}/build/us/{exe_name}.map"):
        m = re.match(r"\s+0x([0-9a-f]{8})\s+([A-Za-z_]\w*)\s*$", l)
        if m:
            symaddr.setdefault(m.group(2), int(m.group(1), 16))
except OSError:
    pass

def addr_of(n):
    m = re.match(r"(?:D|func|jtbl)_([0-9A-F]{8})$", n)
    return int(m.group(1), 16) if m else symaddr.get(n)

def reloc_bad(o, word, line):
    r = rel[o]
    t = r["r_info_type"]
    n = symtab.get_symbol(r["r_info_sym"]).name
    want_sym = re.findall(r"%(?:lo|gp_rel)\((\w+)\)", line) if t in (6, 7) else re.findall(r"jal\s+(\w+)", line) if t == 4 else []
    if not n or not want_sym:
        return False
    a, b = addr_of(n), addr_of(want_sym[0])
    if a is None or b is None:
        return n != want_sym[0]
    if t == 6:
        a += (word & 0xffff) - ((word & 0x8000) << 1)
    return a != b

dis = subprocess.run(["mipsel-linux-gnu-objdump", "-d", "-z", "--no-show-raw-insn", w + ".o"], capture_output=True, text=True).stdout
mine = {}
for l in dis.splitlines():
    m = re.match(r"\s+([0-9a-f]+):\s+(.*)", l)
    if m:
        mine[int(m.group(1), 16)] = re.sub(r"\s+", " ", m.group(2)).strip()

for i, (off, name) in enumerate(syms):
    if want and name not in want:
        continue
    found = glob.glob(f"{D}/asm/us/{binary}/*matchings/**/{name}.s", recursive=True)
    if not found:
        continue
    asm = found[0]
    t = open(asm).read()
    size = int(re.search(r"nonmatching " + name + r", 0x([0-9A-F]+)", t).group(1), 16)
    addr = int(re.search(r"glabel " + name + r"\n\s+/\* [0-9A-F]+ ([0-9A-F]{8}) ", t).group(1), 16)
    end = syms[i + 1][0] if i + 1 < len(syms) else len(text)
    body = t[t.index("glabel " + name + "\n"):]
    body = body[:body.index("endlabel " + name + "\n")] if "endlabel " + name + "\n" in body else body
    tl = [re.sub(r"\s+", " ", re.sub(r".*\*/\s+", "", l)).strip() for l in body.splitlines() if re.match(r"\s+/\*", l)]
    nd = 0
    rows = []
    for k in range(max(size, end - off) // 4):
        o = off + 4 * k
        a = struct.unpack("<I", text[o:o+4])[0] if o < end else None
        b = struct.unpack("<I", ob[addr - ovram + 4 * k:][:4])[0] if 4 * k < size else None
        rbad = False
        if a is not None and b is not None and o in rel:
            rbad = k < len(tl) and reloc_bad(o, a, tl[k])
            mk = 0xfc000000 if (a >> 26) in (2, 3) else 0xffff0000
            a &= mk
            b &= mk
        bad = a != b or rbad
        nd += bad
        rows.append(f"{'**' if bad else '  '} {mine.get(o, '') if o < end else '':38s}| {tl[k] if k < len(tl) else ''}")
    print(f"{name}: {'MATCH' if nd == 0 else str(nd) + ' diffs'} (size {end - off:#x} vs {size:#x})")
    if nd:
        print("\n".join(rows))
