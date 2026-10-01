#!/usr/bin/env python3
"""
Analyzes the full call graph and data access graph of CIV2.EXE and SLUS_007.92
to rank unmatched functions by structural impact:
  - Unmatched callers (in-degree from unmatched functions)
  - Total callers (in-degree across the entire binary)
  - Out-degree (callees)
  - PageRank centrality
  - Size (instructions) and current m2c diff count
"""
import glob
import os
import pickle
import re
from collections import defaultdict

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def analyze_binary(binary: str):
    matched = set()
    pkl_path = f"/tmp/matched_{binary}.pkl"
    if os.path.exists(pkl_path):
        matched = set(pickle.load(open(pkl_path, "rb")).keys())
    if binary == "civ2":
        matched.discard("func_800916F0")
        matched.discard("func_80094298")

    # Also include splat empty stubs in game.c
    game_c = open(os.path.join(ROOT, "src", binary, "game.c")).read()
    for m in re.finditer(r"^(?:void|s32|u32|s16|u16|s8|u8)\s+\*?\s*(func_[0-9A-F]{8})\b", game_c, flags=re.M):
        matched.add(m.group(1))

    files = sorted(glob.glob(os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game", "func_*.s")))
    all_funcs = set()
    callees = defaultdict(set)
    callers = defaultdict(set)
    call_sites = defaultdict(int)
    globals_used = defaultdict(set)
    insn_count = {}

    for f in files:
        fn = os.path.basename(f)[:-2]
        all_funcs.add(fn)
        t = open(f).read()
        insns = [l for l in t.splitlines() if "/*" in l and not l.startswith(".set")]
        insn_count[fn] = len(insns)
        for l in insns:
            m_jal = re.search(r"\bjal\s+(func_[0-9A-F]{8})\b", l)
            if m_jal:
                target = m_jal.group(1)
                callees[fn].add(target)
                callers[target].add(fn)
                call_sites[target] += 1
            for g in re.findall(r"\b(D_[0-9A-F]{8})\b", l):
                globals_used[fn].add(g)

    # Compute PageRank on the call graph (undirected + directed blend to find both hub utilities and controllers)
    N = len(all_funcs)
    pr = {fn: 1.0 / N for fn in all_funcs}
    for _ in range(30):
        new_pr = {fn: 0.15 / N for fn in all_funcs}
        for u in all_funcs:
            outs = callees[u] & all_funcs
            if outs:
                share = 0.85 * pr[u] / len(outs)
                for v in outs:
                    new_pr[v] += share
        pr = new_pr

    unmatched = [fn for fn in all_funcs if fn not in matched]

    # Rank unmatched functions by:
    # 1. Most called by other functions (Core Engine / Utility Hubs)
    # 2. Highest combined (unmatched callers + unmatched callees) & manageable size
    print(f"=== {binary.upper()} CALL GRAPH SUMMARY ===")
    print(f"Total game functions: {len(all_funcs)} | Matched: {len(matched)} ({100*len(matched)/len(all_funcs):.1f}%) | Unmatched: {len(unmatched)}")

    by_in_deg = sorted(
        unmatched,
        key=lambda fn: (len(callers[fn] - matched), len(callers[fn]), call_sites[fn], -insn_count[fn]),
        reverse=True,
    )
    print(f"\nTop 20 Most-Called Unmatched Hub Functions in {binary.upper()} (In-Degree / Call Sites):")
    print(f"{'Function':<15} {'UnmatchedCallers':>16} {'TotalCallers':>13} {'CallSites':>10} {'Callees':>8} {'Globals':>8} {'Insns':>7} {'PageRank':>10}")
    for fn in by_in_deg[:20]:
        uc = len(callers[fn] - matched)
        tc = len(callers[fn])
        cs = call_sites[fn]
        out_c = len(callees[fn])
        gl = len(globals_used[fn])
        ic = insn_count[fn]
        print(f"{fn:<15} {uc:>16} {tc:>13} {cs:>10} {out_c:>8} {gl:>8} {ic:>7} {pr[fn]:>10.5f}")

    # Also find high-impact unmatched functions that are relatively small (<= 60 instructions)
    small_hubs = [fn for fn in by_in_deg if insn_count[fn] <= 60 and len(callers[fn]) >= 3]
    print(f"\nTop 20 High-Impact Tractable Unmatched Functions in {binary.upper()} (<= 60 insns, >= 3 callers):")
    print(f"{'Function':<15} {'UnmatchedCallers':>16} {'TotalCallers':>13} {'CallSites':>10} {'Callees':>8} {'Globals':>8} {'Insns':>7}")
    for fn in small_hubs[:20]:
        uc = len(callers[fn] - matched)
        tc = len(callers[fn])
        cs = call_sites[fn]
        out_c = len(callees[fn])
        gl = len(globals_used[fn])
        ic = insn_count[fn]
        print(f"{fn:<15} {uc:>16} {tc:>13} {cs:>10} {out_c:>8} {gl:>8} {ic:>7}")


if __name__ == "__main__":
    analyze_binary("slus")
    print("\n" + "=" * 95 + "\n")
    analyze_binary("civ2")
