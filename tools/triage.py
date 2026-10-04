#!/usr/bin/env python3
"""Show the instruction diff of every near-miss in one report.

Near-miss triage is pattern work: the same idiom (a wrong store width, a dual
induction variable, a missing array subscript) shows up in many functions, and
reading the diffs one function at a time hides that.  This tool takes the near
miss list produced by tools/auto_match_sweep.py, re-scores each entry with its
recorded flag set using the best available draft (base cache or the rewritten
variant cache), and prints the differing instructions grouped by function.

Usage:
  tools/triage.py /tmp/near_wide_civ2.txt --bin civ2 --limit 12
  tools/triage.py /tmp/near_misses_civ2.txt --only func_800142CC
"""
import argparse
import os
import pickle
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def drafts_for(binary, name):
    """Return {label: c_code} for every cache that has a draft of `name`."""
    out = {}
    for label, path in (("base", f"/tmp/m2c_cache_{binary}.pkl"),
                        ("v2", f"/tmp/m2c_cache_{binary}_v2.pkl")):
        if not os.path.exists(path):
            continue
        with open(path, "rb") as f:
            for fn, _asm, code in pickle.load(f):
                if fn == name and code:
                    out[label] = code
    return out


def score(code, name, binary, opt):
    prologue = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n'
    path = f"/tmp/triage_{name}.c"
    with open(path, "w") as f:
        f.write(prologue + code + "\n")
    r = subprocess.run(
        [sys.executable, os.path.join(ROOT, "tools", "try_match.py"), path, name,
         "--bin", binary, "--opt", opt],
        capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    m = re.search(r":\s*(\d+) diffs? ", out)
    if m:
        return int(m.group(1)), out
    if "MATCH" in out:
        return 0, out
    return None, out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("near_list")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--limit", type=int, default=12)
    ap.add_argument("--only", default=None)
    ap.add_argument("--max-diff", type=int, default=10 ** 6)
    args = ap.parse_args(argv)

    entries = []
    for line in open(args.near_list):
        m = re.match(r"(\d+) (\S.*?) (\S+)$", line.strip())
        if m:
            entries.append((int(m.group(1)), m.group(2), m.group(3)))
    entries.sort()

    shown = 0
    for recorded, opt, name in entries:
        if args.only and name != args.only:
            continue
        if recorded > args.max_diff:
            continue
        best = None
        for label, code in drafts_for(args.binary, name).items():
            n, out = score(code, name, args.binary, opt)
            if n is None:
                continue
            if best is None or n < best[0]:
                best = (n, label, out)
        if best is None:
            print(f"=== {name} [{opt}] -- no draft compiled\n")
            continue
        n, label, out = best
        if n > 0 and n > max(recorded, 3) + 2:
            pass  # still show: the recorded count came from a different cache
        print(f"=== {name}  [{opt}] draft={label}  {n} diffs (recorded {recorded})")
        for line in out.splitlines():
            if "**" in line:
                print("   ", line.strip())
        print()
        shown += 1
        if shown >= args.limit and not args.only:
            break
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
