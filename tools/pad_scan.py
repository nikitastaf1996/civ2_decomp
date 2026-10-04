#!/usr/bin/env python3
"""Find near-misses that only need a dead stack local.

Several CIV2 functions reserve stack the code never references: the retail frame is
larger than the m2c draft's, $ra is saved deeper, and nothing in the body touches the
extra space.  cc1 2.7.2 does not discard an unused array, so declaring one of the
right size reproduces the frame exactly.

This tool scans a near-miss list for entries whose diff involves the stack pointer,
tries a range of dead-local sizes against a few flag sets, and reports every hit.

Usage:
  tools/pad_scan.py /tmp/near_union.txt --bin civ2
  tools/pad_scan.py /tmp/near_union.txt --sizes 4,8,16,24,40,260
"""
import argparse
import os
import pickle
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROLOGUE = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n'
DEFAULT_FLAGS = ["-O1 -G0", "-O1 -G8", "-O2 -G0", "-O2 -G8",
                 "-O1 -G8 -fno-schedule-insns", "-O2 -G8 -fno-schedule-insns2"]


def draft_for(binary, fn):
    for path in (f"/tmp/m2c_cache_{binary}_v2.pkl", f"/tmp/m2c_cache_{binary}.pkl"):
        if not os.path.exists(path):
            continue
        for name, _asm, code in pickle.load(open(path, "rb")):
            if name == fn and code:
                return code
    return None


def score(code, fn, binary, opt):
    open("/tmp/pad_scan_draft.c", "w").write(PROLOGUE + code + "\n")
    r = subprocess.run(
        [sys.executable, os.path.join(ROOT, "tools", "try_match.py"),
         "/tmp/pad_scan_draft.c", fn, "--bin", binary, "--opt", opt],
        capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    m = re.search(r"(\d+) diffs?", out)
    if m:
        return int(m.group(1)), out
    return (0, out) if "MATCH" in out else (None, out)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("near_list")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--sizes", default=None,
                    help="comma-separated pad sizes (default: derive from the frames)")
    ap.add_argument("--flags", default=None, help="comma-separated flag sets")
    args = ap.parse_args(argv)

    flags = args.flags.split(";") if args.flags else DEFAULT_FLAGS
    entries = []
    for line in open(args.near_list):
        t = line.split()
        if len(t) >= 3:
            entries.append((int(t[0]), " ".join(t[1:-1]), t[-1]))

    for recorded, opt, fn in entries:
        code = draft_for(args.binary, fn)
        if not code:
            continue
        _, out = score(code, fn, args.binary, opt)
        ours = re.search(r"addiu sp,sp,-(\d+)", out)
        retail = re.search(r"\|\s*addiu \$sp, \$sp, -(0x[0-9a-f]+|\d+)", out)
        if not (ours and retail):
            continue
        # only consider functions whose very first diff is the frame
        if "** addiu sp,sp" not in out:
            continue
        if args.sizes:
            sizes = [int(s) for s in args.sizes.split(",")]
        else:
            delta = int(retail.group(1), 0) - int(ours.group(1))
            sizes = sorted({d for d in (delta, delta - 4, delta + 4, delta - 8,
                                        delta - 0x10) if d > 0})
        best = None
        for size in sizes:
            m = re.search(rf"(^[A-Za-z0-9_* \t]+?\b{fn}\([^)]*\)\s*\{{\s*\n)", code, flags=re.M)
            if not m:
                continue
            padded = code[:m.end()] + f"    u8 dead_pad[{size}];\n" + code[m.end():]
            for fl in flags:
                n, _ = score(padded, fn, args.binary, fl)
                if n is None:
                    continue
                if best is None or n < best[0]:
                    best = (n, size, fl)
        if best and best[0] <= 2:
            print(f"{fn}: {best[0]} diffs with dead_pad[{best[1]}] at {best[2]}")
        elif best:
            print(f"{fn}: best {best[0]} diffs (pad {best[1]}, {best[2]})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
