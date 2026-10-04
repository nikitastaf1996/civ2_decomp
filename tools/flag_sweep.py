#!/usr/bin/env python3
"""Score one draft under many cc1 flag combinations.

The sweep in tools/auto_match_sweep.py tests four ``-O``/``-G`` pairs.  When a
near-miss differs only in instruction *scheduling* (e.g. a body instruction
interleaved into the prologue's register saves) the cause is often a scheduling
flag rather than the source spelling, and the fix is a per-function
``/* @CFLAGS: ... */`` annotation -- which maspsx_wrap.py re-compiles the
function with (README section 5).

Usage:
  tools/flag_sweep.py /tmp/drafts/func_800B4B7C.c --bin civ2
  tools/flag_sweep.py /tmp/drafts/func_x.c --func func_800B4B7C --extra "-fno-delayed-branch"
"""
import argparse
import itertools
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

BASE_OPTS = ["-O1", "-O2", "-O3"]
G_OPTS = ["-G8", "-G0"]
EXTRA = [
    "",
    "-fno-schedule-insns",
    "-fno-schedule-insns2",
    "-fno-delayed-branch",
    "-fno-strength-reduce",
    "-fomit-frame-pointer",
    "-fno-jump-optimize",
]


def score(path, func, binary, opt, source_only=False):
    cmd = [sys.executable, os.path.join(ROOT, "tools", "try_match.py"), path,
           func, "--bin", binary, "--opt", opt]
    if source_only:
        cmd.append("--source-only")
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    m = re.search(r":\s*(\d+) diffs? ", out)
    if m:
        return int(m.group(1)), out
    if "MATCH" in out:
        return 0, out
    # Anything else is a compile/assemble failure (unknown flag, unassemblable
    # draft): report it as such instead of scoring it as a perfect match.
    return None, out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("c_file")
    ap.add_argument("--func", required=True)
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--source-only", action="store_true")
    ap.add_argument("--extra", default=None,
                    help="restrict the flag matrix to this suffix")
    ap.add_argument("--show-best", type=int, default=3)
    args = ap.parse_args(argv)

    extras = [args.extra] if args.extra else EXTRA
    combos = []
    for o, g, e in itertools.product(BASE_OPTS, G_OPTS, extras):
        opt = " ".join(x for x in (o, g, e) if x)
        combos.append(opt)

    results = []
    for opt in combos:
        n, out = score(args.c_file, args.func, args.binary, opt, args.source_only)
        results.append((n if n is not None else 10 ** 6, opt, out))
    results.sort(key=lambda t: t[0])
    for n, opt, _ in results[: args.show_best]:
        print(f"{n if n < 10**6 else 'FAIL':>5}  {opt}")
    best = results[0]
    if args.show_best and best[0] <= 6:
        print(f"\n--- {best[1]} ({best[0]} diffs) ---\n{best[2]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
