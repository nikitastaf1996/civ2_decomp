#!/usr/bin/env python3
"""Triage every unmatched civ2 function with the repo's own try_match scoring.

Writes enhanced/repair drafts to /tmp/tri/<func>.c (hand-written best drafts from
/home/user/drafts/ win when they exist) and then, for each requested opt set,
runs tools/try_match.py in parallel and records
    <diffs> <size_delta> <func> <opt>
into /tmp/triage_<opt-tag>.txt sorted by (diffs, |size delta|, callers).

Usage:
    python3 tools/triage_all.py [--bin civ2] [--opt "-O1 -G8"] [--opt ...]
                                [--jobs 8] [--limit N]
"""
import argparse
import glob
import os
import pickle
import re
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor

D = "/home/user/civ2_decomp"


def tri_dir(binary):
    """civ2 keeps the historical /tmp/tri; other binaries get their own dir."""
    return "/tmp/tri" if binary == "civ2" else f"/tmp/tri_{binary}"
sys.path.insert(0, os.path.join(D, "tools"))
from m2c_postprocess import enhance_c  # noqa: E402
from draft_repair import repair as repair_draft  # noqa: E402

HAND = "/home/user/drafts"


def unmatched(binary):
    src = open(f"{D}/src/{binary}/game.c").read()
    out = []
    for m in re.finditer(r'INCLUDE_ASM\("asm/us/[^"]+",\s*(func_[0-9A-F]{8})\);', src):
        out.append(m.group(1))
    return out


def callers(binary):
    """Rough caller count from the checked-in disassembly (jal func_XXXXXXXX)."""
    counts = {}
    for p in glob.glob(f"{D}/asm/us/{binary}/**/*.s", recursive=True):
        txt = open(p, errors="ignore").read()
        for t in re.findall(r"jal\s+(func_[0-9A-F]{8})", txt):
            counts[t] = counts.get(t, 0) + 1
    return counts


def build_drafts(binary):
    d = tri_dir(binary)
    os.makedirs(d, exist_ok=True)
    cache = pickle.load(open(f"/tmp/m2c_cache_{binary}.pkl", "rb"))
    todo = set(unmatched(binary))
    n_raw = 0
    for (name, path, c) in cache:
        if name not in todo or not c:
            continue
        enhanced = enhance_c(binary, name, path, c)
        if not re.search(r"\b" + re.escape(name) + r"\s*\(", enhanced):
            continue
        fixed = repair_draft(enhanced, binary, name)
        if fixed != enhanced:
            enhanced = fixed
        hand = os.path.join(HAND, f"{name}.c")
        if os.path.exists(hand):
            enhanced = open(hand).read()
        if '#include "common.h"' not in enhanced:
            enhanced = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n' + enhanced
        open(f"{d}/{name}.c", "w").write(enhanced)
        n_raw += 1
    print(f"[{binary}] drafts written: {n_raw} (hand drafts override where present)",
          flush=True)


def score(args):
    fn, opt, binary = args
    p = subprocess.run(
        ["python3", f"{D}/tools/try_match.py", f"{tri_dir(binary)}/{fn}.c", fn,
         "--bin", binary, "--opt", opt],
        capture_output=True, text=True, cwd=D)
    out = (p.stdout or "") + (p.stderr or "")
    if re.search(r"\bMATCH\b", out):
        return (fn, 0, 0)
    m = re.search(r"(\d+) diffs \(size (0x[0-9a-f]+) vs (0x[0-9a-f]+)\)", out)
    if m:
        return (fn, int(m.group(1)), int(m.group(2), 16) - int(m.group(3), 16))
    return (fn, None, None)  # cc1 failure


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--bin", default="civ2")
    ap.add_argument("--opt", action="append", default=[])
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--limit", type=int, default=0)
    a = ap.parse_args()
    opts = a.opt or ["-O1 -G8"]
    build_drafts(a.bin)
    cnt = callers(a.bin)
    todo = sorted(os.path.basename(p)[:-2] for p in glob.glob(f"{tri_dir(a.bin)}/*.c"))
    if a.limit:
        todo = todo[:a.limit]
    for opt in opts:
        tag = re.sub(r"[^A-Za-z0-9]+", "_", opt).strip("_")
        with ThreadPoolExecutor(max_workers=a.jobs) as ex:
            res = list(ex.map(score, [(fn, opt, a.bin) for fn in todo]))
        rows = [(d, sd, fn) for (fn, d, sd) in res if d is not None]
        failed = [fn for (fn, d, sd) in res if d is None]
        rows.sort(key=lambda r: (r[0], abs(r[1]), -cnt.get(r[2], 0), r[2]))
        prefix = "" if a.bin == "civ2" else f"{a.bin}_"
        out = f"/tmp/triage_{prefix}{tag}.txt"
        with open(out, "w") as f:
            for d, sd, fn in rows:
                f.write(f"{d:4d} {sd:+5d} {cnt.get(fn,0):3d} {fn} {opt}\n")
        exact = [r for r in rows if r[0] == 0]
        print(f"[{opt}] scored {len(rows)} ({len(failed)} cc1 failures) -> {out}"
              f"  exact={len(exact)}  <=3 diffs={sum(1 for r in rows if r[0] <= 3)}"
              f"  <=10={sum(1 for r in rows if r[0] <= 10)}"
              f"  <=40={sum(1 for r in rows if r[0] <= 40)}", flush=True)
        if exact:
            for r in exact:
                print("   EXACT:", r[2], flush=True)


if __name__ == "__main__":
    main()
