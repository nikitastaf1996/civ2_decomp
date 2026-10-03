#!/usr/bin/env python3
"""Generate /tmp/m2c_cache_{slus,civ2}.pkl: raw m2c output for every nonmatching function.

This is the first stage of the automated matching pipeline:

    tools/gen_m2c_cache.py          # this file  -> /tmp/m2c_cache_*.pkl
    tools/auto_match_sweep.py       #             -> /tmp/matched_*.pkl
    tools/splice_matched.py         #             -> src/{slus,civ2}/game.c

Usage:
    python3 tools/gen_m2c_cache.py [--bin slus|civ2] [--jobs N] [--force]
"""
import argparse
import glob
import os
import pickle
import re
import subprocess
import sys
from multiprocessing import Pool

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
M2C = os.path.join(ROOT, "external", "m2c", "m2c.py")

BINARIES = {
    "slus": ("SLUS_007.92", 208),
    "civ2": ("CIV2.EXE", 1427),
}


def decompile(path: str):
    """Run m2c on a single splat .s file, returning (name, path, c_source)."""
    name = os.path.basename(path)[:-2]
    try:
        r = subprocess.run(
            [sys.executable, M2C, "-t", "mipsel-gcc-c", "--valid-syntax", "--no-cache", path],
            capture_output=True,
            text=True,
            timeout=300,
        )
    except subprocess.TimeoutExpired:
        return (name, path, None)
    if r.returncode != 0:
        return (name, path, None)
    c = r.stdout
    # Keep only the function whose name matches the file (m2c can emit helpers too).
    # NB: match on a word boundary, not on " name(" -- a pointer-returning
    # definition (`void *func_800A2444(...)`) has no space before the name, and
    # that spelling used to hide 35 functions from every sweep in the project.
    if not re.search(r"\b" + re.escape(name) + r"\s*\(", c):
        return (name, path, c if c.strip() else None)
    return (name, path, c)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--bin", dest="binary", choices=sorted(BINARIES), default=None)
    ap.add_argument("--jobs", type=int, default=max(1, (os.cpu_count() or 2) - 1))
    ap.add_argument("--force", action="store_true", help="ignore existing cache")
    ap.add_argument(
        "--only-file",
        default=None,
        help=(
            "File with one function name per line; decompile only those (plus any already "
            "cached entries, which are carried over). Use this to skip the hundreds of "
            "functions that are already matched and would only be re-derived identically."
        ),
    )
    args = ap.parse_args()

    only = None
    if args.only_file:
        only = {line.strip() for line in open(args.only_file) if line.strip()}

    targets = [args.binary] if args.binary else sorted(BINARIES)
    for binary in targets:
        cache = f"/tmp/m2c_cache_{binary}.pkl"
        carried = []
        if os.path.exists(cache) and not args.force:
            if only is None:
                n = len(pickle.load(open(cache, "rb")))
                print(f"[{binary}] cache exists ({n} entries); use --force to rebuild")
                continue
            carried = [r for r in pickle.load(open(cache, "rb")) if r[0] not in only]

        files = sorted(glob.glob(os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game", "func_*.s")))
        if only is not None:
            before = len(files)
            files = [f for f in files if os.path.basename(f)[:-2] in only]
            print(f"[{binary}] --only-file restricted {before} -> {len(files)} functions")
        print(f"[{binary}] decompiling {len(files)} functions with {args.jobs} jobs ...")
        with Pool(args.jobs) as pool:
            results = []
            for i, res in enumerate(pool.imap_unordered(decompile, files, chunksize=4), 1):
                results.append(res)
                if i % 100 == 0:
                    print(f"  {i}/{len(files)}", flush=True)
        ok = sum(1 for _, _, c in results if c)
        pickle.dump(carried + results, open(cache, "wb"))
        print(f"[{binary}] {ok}/{len(files)} decompiled ({len(carried)} carried over) -> {cache}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
