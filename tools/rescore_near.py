#!/usr/bin/env python3
"""
Re-score the near-miss lists with tools/align_diff.py.

The near lists on disk (`/tmp/lists/near_repair_*.txt`) were produced by an older
run of tools/auto_match_sweep.py, and their diff counts go stale whenever the
aligner's notation folding changes -- a branch-target difference, for instance,
used to count as a real edit and no longer does.  This re-runs every listed
function through the aligner, keeps the best flag set per function, and prints one
line per function sorted by edit distance, so the cheapest work is genuinely first.

  tools/rescore_near.py                     # civ2 base + _v2 lists, SLUS list
  tools/rescore_near.py --list FILE ...     # explicit lists
  tools/rescore_near.py --limit 10          # only the ten closest

Each list file holds `<diffs> [flags] <func>` lines; only the function name is
used, the aligner decides the flags.
"""
import argparse
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DEFAULT = [
    ("civ2", "/tmp/lists/near_repair_base_civ2.txt"),
    ("civ2", "/tmp/lists/near_repair_v2_civ2.txt"),
    ("slus", "/tmp/lists/near_repair_slus.txt"),
]
LINE = re.compile(r"^(\d+)\s+(.*?)\s*(\w+)$")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--list", action="append", default=[], help="BINARY:PATH")
    ap.add_argument("--limit", type=int, default=0)
    args = ap.parse_args()

    sources = DEFAULT
    if args.list:
        sources = [(spec.split(":", 1)[0], spec.split(":", 1)[1]) for spec in args.list]

    rows, seen = [], set()
    for binary, path in sources:
        if not os.path.exists(path):
            continue
        for line in open(path):
            m = LINE.match(line.strip())
            if not m:
                continue
            fn = m.group(3)
            if fn in seen:
                continue
            seen.add(fn)
            game_c = open(os.path.join(ROOT, "src", binary, "game.c")).read()
            if f'INCLUDE_ASM("asm/us/{binary}/nonmatchings/game", {fn})' not in game_c:
                continue  # already matched and spliced
            out = subprocess.run(
                [sys.executable, "-W", "ignore", os.path.join(ROOT, "tools", "align_diff.py"),
                 fn, "--bin", binary],
                capture_output=True, text=True, cwd=ROOT,
            ).stdout
            best = None
            for row in out.splitlines():
                mm = re.match(r"^(-O\d(?: -G\d)?.*?): (\d+) vs (\d+) insns, (\d+) edited regions", row)
                if mm:
                    diffs = int(mm.group(4))
                    if best is None or diffs < best[0]:
                        best = (diffs, mm.group(1), mm.group(2), mm.group(3))
            if best:
                rows.append((best[0], binary, fn, best[1], best[2], best[3]))

    rows.sort()
    for diffs, binary, fn, flags, cand, tgt in rows[: args.limit or len(rows)]:
        print(f"{diffs:3d} {binary:5s} {fn:20s} {flags:16s} {cand} vs {tgt} insns")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
