#!/usr/bin/env python3
"""Dump an m2c draft (from a cache pickle) to a file so it can be edited by hand.

The sweep caches every m2c result in ``/tmp/m2c_cache_<bin>.pkl`` (a list of
``(name, asm_path, c_code)`` tuples) and stores its verified matches in
``/tmp/matched_<bin>.pkl`` (a dict ``name -> c_code``).  Both are only useful
inside the pipeline, so this tool materialises one draft as a compilable
translation unit that ``tools/try_match.py`` and ``tools/m2c_variants.py`` can
be pointed at.

Usage:
  tools/dump_draft.py func_800B4B7C                     # -> /tmp/drafts/func_800B4B7C.c
  tools/dump_draft.py func_800B4B7C --enhanced          # apply the rewrite passes
  tools/dump_draft.py --all --bin civ2 --out-dir /tmp/drafts
"""
import argparse
import os
import pickle
import re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Kept in sync with tools/auto_match_sweep.py's translation-unit prologue.
PROLOGUE = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n'


def load_cache(path):
    with open(path, "rb") as f:
        return pickle.load(f)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("func", nargs="?")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--cache", default=None)
    ap.add_argument("--out-dir", default="/tmp/drafts")
    ap.add_argument("--enhanced", action="store_true",
                    help="run tools/m2c_postprocess.enhance_c over the draft")
    ap.add_argument("--all", action="store_true")
    args = ap.parse_args(argv)

    cache = args.cache or f"/tmp/m2c_cache_{args.binary}.pkl"
    res = load_cache(cache)
    if args.enhanced:
        from m2c_postprocess import enhance_c

    os.makedirs(args.out_dir, exist_ok=True)
    if args.func:
        want = {args.func}
    elif args.all:
        want = None
    else:
        ap.error("give a function name or --all")

    written = 0
    for name, _asm, code in res:
        if not code or (want is not None and name not in want):
            continue
        if not re.search(r"\b" + re.escape(name) + r"\s*\(", code):
            continue
        if args.enhanced:
            code = enhance_c(args.binary, name, None, code)
        path = os.path.join(args.out_dir, f"{name}.c")
        with open(path, "w") as f:
            f.write(PROLOGUE + code + "\n")
        if args.func:
            print(path)
        written += 1
    if args.all:
        print(f"wrote {written} drafts to {args.out_dir}")
    if written == 0:
        raise SystemExit(f"no draft found in {cache} (function name misspelled?)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
