#!/usr/bin/env python3
"""Try several spellings of one function and report each one's diff count.

Near-miss triage is an exercise in trying alternative source spellings (see
README section 3b).  Doing that by hand means re-editing a file and re-running
tools/try_match.py per idea; this tool takes a directory of candidate files
named ``<func>__<label>.c`` and reports the diff count of every one of them, so
a batch of ideas can be scored in one command.

Usage:
  tools/score_variants.py /tmp/cand --bin civ2 --opt "-O1 -G8"
  tools/score_variants.py /tmp/cand --bin civ2 --opt "-O1 -G8" --func func_800B4B7C
"""
import argparse
import glob
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def score(path, func, binary, opt):
    r = subprocess.run(
        [sys.executable, os.path.join(ROOT, "tools", "try_match.py"), path,
         func, "--bin", binary, "--opt", opt],
        capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    m = re.search(r":\s*(\d+) diffs? ", out)
    if m:
        return int(m.group(1)), out
    if "IDENTICAL" in out or "0 diff" in out:
        return 0, out
    return None, out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("dir")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--opt", default="-O1 -G8")
    ap.add_argument("--func", default=None)
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args(argv)

    results = []
    for path in sorted(glob.glob(os.path.join(args.dir, "*.c"))):
        base = os.path.basename(path)[:-2]
        if "__" in base:
            func, label = base.split("__", 1)
        else:
            func, label = base, ""
        if args.func and func != args.func:
            continue
        n, out = score(path, func, args.binary, args.opt)
        results.append((n if n is not None else 10 ** 6, label, func, out))
        if args.verbose and n is not None and n <= 4:
            print(f"--- {label} ({n}) ---\n{out}")

    for n, label, func, _out in sorted(results):
        shown = "COMPILE-FAIL" if n == 10 ** 6 else f"{n} diffs"
        print(f"{shown:>12}  {func}  {label}")
    best = min((n for n, *_ in results), default=None)
    if best == 0:
        print("\n*** EXACT MATCH found ***")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
