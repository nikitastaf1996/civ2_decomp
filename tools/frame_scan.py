#!/usr/bin/env python3
"""Find unmatched functions whose retail stack frame is larger than the draft's.

A dead local is invisible in the instruction diff except through the frame size and
the $ra offset, so a function can be many instructions away from matching and still be
one declaration away from exact.  This scans *every* unmatched function: it compiles
each draft with cc1 (no assembler pass needed -- the frame size is in cc1's own
`.frame` directive), compares it with the frame in the retail disassembly, and for
every function whose retail frame is bigger, tries a few dead-local sizes through
tools/try_match.py.

Usage:
  tools/frame_scan.py --bin civ2 --only-file /tmp/unmatched_civ2.txt --jobs 2
"""
import argparse
import os
import pickle
import re
import subprocess
import sys
from multiprocessing import Pool

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROLOGUE = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n'
FLAGS = ["-O1 -G8", "-O2 -G8", "-O1 -G0", "-O2 -G0"]


def cc1_frame(binary, name, code, opt):
    cpp_in = PROLOGUE + code
    src = "/tmp/frame_scan_src.c"
    open(src, "w").write(cpp_in)
    cmd = (f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{ROOT}/include "
           f"-D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx "
           f"-D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM {src} | "
           f"{ROOT}/bin/gcc-2.7.2-psx/cc1 -quiet {opt} -mips1 -mcpu=3000 -mgas "
           f"-msoft-float -fgnu-linker -w -o - -")
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    m = re.search(r"\.frame\s+\$sp,(\d+),\$31", r.stdout)
    return int(m.group(1)) if m else None


def retail_frame(binary, name):
    path = os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game", f"{name}.s")
    if not os.path.exists(path):
        return None
    m = re.search(r"addiu\s+\$sp, \$sp, -0x([0-9a-f]+)", open(path).read())
    return int(m.group(1), 16) if m else 0


def score(code, name, binary, opt):
    open("/tmp/frame_scan_draft.c", "w").write(PROLOGUE + code + "\n")
    r = subprocess.run(
        [sys.executable, os.path.join(ROOT, "tools", "try_match.py"),
         "/tmp/frame_scan_draft.c", name, "--bin", binary, "--opt", opt],
        capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    m = re.search(r"(\d+) diffs?", out)
    if m:
        return int(m.group(1)), out
    return (0, out) if "MATCH" in out else (None, out)


def examine(args):
    binary, name, code = args
    rf = retail_frame(binary, name)
    if rf is None or rf == 0:
        return None
    best = None
    for opt in FLAGS[:2]:
        f = cc1_frame(binary, name, code, opt)
        if f is None:
            continue
        if best is None or abs(f - rf) < abs(best[1] - rf):
            best = (opt, f)
    if not best or best[1] >= rf:
        return None
    delta = rf - best[1]
    sizes = sorted({delta, delta - 4, delta + 4})
    results = []
    for size in sizes:
        if size <= 0:
            continue
        m = re.search(rf"(^[A-Za-z0-9_* \t]+?\b{name}\([^)]*\)\s*\{{\s*\n)", code, flags=re.M)
        if not m:
            continue
        padded = code[:m.end()] + f"    u8 dead_pad[{size}];\n" + code[m.end():]
        for opt in FLAGS:
            n, out = score(padded, name, binary, opt)
            if n is None:
                continue
            results.append((n, size, opt))
            if n == 0:
                return (name, 0, size, opt)
    if results:
        results.sort()
        if results[0][0] <= 3:
            return (name, results[0][0], results[0][1], results[0][2])
    return None


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--only-file", default=None)
    ap.add_argument("--jobs", type=int, default=2)
    args = ap.parse_args(argv)

    cache = f"/tmp/m2c_cache_{args.binary}.pkl"
    want = None
    if args.only_file:
        want = {l.strip() for l in open(args.only_file) if l.strip()}
    work = []
    for name, _asm, code in pickle.load(open(cache, "rb")):
        if not code or (want is not None and name not in want):
            continue
        if not re.search(r"\b" + re.escape(name) + r"\s*\(", code):
            continue
        work.append((args.binary, name, code))
    print(f"scanning {len(work)} drafts for frame gaps", flush=True)
    hits = []
    with Pool(args.jobs) as p:
        for i, res in enumerate(p.imap_unordered(examine, work, chunksize=4)):
            if res:
                hits.append(res)
                print(f"  HIT {res[0]}: {res[1]} diffs with dead_pad[{res[2]}] at {res[3]}",
                      flush=True)
            if (i + 1) % 100 == 0:
                print(f"  ... {i+1}/{len(work)}", flush=True)
    print(f"done: {len(hits)} candidates")
    for name, n, size, opt in sorted(hits, key=lambda t: t[1]):
        print(f"{n}\t{name}\tpad={size}\t{opt}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
