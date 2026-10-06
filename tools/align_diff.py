#!/usr/bin/env python3
"""Aligned instruction diff for manual near-miss work.

``tools/try_match.py`` reports a *positional* diff: the moment the candidate has
one inserted or deleted instruction, every line after it is reported as
differing, and a one-instruction rotation reads as twenty-seven diffs.  This tool
aligns the two instruction streams first (``difflib`` over a normalised spelling
that folds ``$`` registers, hex/decimal immediates and branch offsets) and prints
only the regions that really differ, which is what makes a wrong spelling look
like the one-line change it is.

Usage:
  tools/align_diff.py func_8007BF24                     # best flag set, draft from the v2 cache
  tools/align_diff.py func_8007BF24 --all-opts          # score every flag set, keep the closest
  tools/align_diff.py func_8007BF24 --draft draft.c     # score a hand-written spelling
  tools/align_diff.py func_8007BF24 --show-all          # keep the matching instructions in the listing
"""
import argparse
import difflib
import os
import pickle
import re
import struct
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REPO = ROOT
PROLOGUE = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n'

BIN = {"civ2": "CIV2.EXE", "slus": "SLUS_007.92"}
OVRAM = 0x80010000


def norm(text):
    t = text.lower().replace("$", "").replace(",", " ")
    t = re.sub(r"\s+", " ", t).strip()
    t = re.sub(r"\b0x([0-9a-f]+)\b", lambda m: str(int(m.group(1), 16)), t)
    t = re.sub(r"\b([0-9a-f]+)\b", lambda m: str(int(m.group(1), 16)) if re.fullmatch(r"[0-9a-f]*[a-f][0-9a-f]*", m.group(1)) else m.group(1), t)
    t = re.sub(r"\b([0-9a-f]+) <[^>]*>", lambda m: str(int(m.group(1), 16)), t)
    t = re.sub(r"\s+", " ", t).strip()
    return t


def target_listing(binary, name):
    path = f"{REPO}/asm/us/{binary}/nonmatchings/game/{name}.s"
    txt = open(path).read()
    out = []
    for line in txt.splitlines():
        m = re.match(r"\s+/\*\s+[0-9A-F]+\s+([0-9A-F]{8})\s+([0-9A-F]{8})\s+\*/\s*(.*?)\s*$", line)
        if m:
            out.append((int(m.group(2), 16), re.sub(r"\s+", " ", m.group(3))))
    return out


def compile_draft(binary, draft, opt):
    import tempfile

    w = os.path.join(tempfile.mkdtemp(prefix="difftool_"), "d")
    r = subprocess.run(
        f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{REPO}/include -D_LANGUAGE_C -DLANGUAGE_C "
        f"-D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM "
        f"{draft} > {w}.i && "
        f"{REPO}/bin/gcc-2.7.2-psx/cc1 -quiet {opt} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -w -o {w}.cc1.s {w}.i && "
        f"python3 {REPO}/tools/maspsx_wrap.py --bin {binary} --c-file {draft} --in-s {w}.cc1.s --out-s {w}.s && "
        f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{REPO} -I{REPO}/include -o {w}.o {w}.s",
        shell=True, capture_output=True, text=True)
    if r.returncode:
        print(r.stderr[-2000:], file=sys.stderr)
        raise SystemExit(1)
    d = subprocess.run(["mipsel-linux-gnu-objdump", "-d", w + ".o"], capture_output=True, text=True).stdout
    out = []
    for line in d.splitlines():
        m = re.match(r"\s+[0-9a-f]+:\s+([0-9a-f]{8})\s+(.*?)\s*$", line)
        if m:
            word = int(m.group(1), 16)
            out.append((word, re.sub(r"\s+", " ", m.group(2))))
    return out, w + ".o"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("func")
    ap.add_argument("--bin", dest="binary", default="civ2", choices=["civ2", "slus"])
    ap.add_argument("--opt", default="-O1 -G0")
    ap.add_argument("--draft", default=None)
    ap.add_argument("--show-all", action="store_true")
    ap.add_argument("--all-opts", action="store_true", help="score every callback draft over the usual flag matrix")
    args = ap.parse_args()

    if args.draft is None:
        for cache in (f"/tmp/m2c_cache_{args.binary}_v2.pkl", f"/tmp/m2c_cache_{args.binary}.pkl"):
            if not os.path.exists(cache):
                continue
            for n, _a, c in pickle.load(open(cache, "rb")):
                if n == args.func and c:
                    args.draft = f"/tmp/drafts/{args.func}.c"
                    os.makedirs("/tmp/drafts", exist_ok=True)
                    open(args.draft, "w").write(PROLOGUE + c + "\n")
                    break
            break
    if args.draft is None:
        raise SystemExit("no draft found")

    opts = ["-O1 -G8", "-O2 -G8", "-O1 -G0", "-O2 -G0",
            "-O1 -G8 -fno-schedule-insns", "-O1 -G0 -fno-schedule-insns",
            "-O1 -G8 -fno-schedule-insns2", "-O1 -G0 -fno-schedule-insns2",
            "-O2 -G8 -fno-schedule-insns2", "-O2 -G0 -fno-delayed-branch"] if args.all_opts else [args.opt]

    tgt = target_listing(args.binary, args.func)
    best = None
    for opt in opts:
        cand, _obj = compile_draft(args.binary, args.draft, opt)
        # drop trailing alignment nops
        while cand and cand[-1][0] == 0:
            cand.pop()
        a = [norm(t) for _w, t in cand]
        b = [norm(t) for _w, t in tgt]
        ratio = difflib.SequenceMatcher(None, a, b).ratio()
        nd = sum(1 for op, _i1, _i2, _j1, _j2 in difflib.SequenceMatcher(None, a, b).get_opcodes() if op != "equal")
        print(f"{opt}: {len(tgt)} vs {len(cand)} insns, {nd} edited regions")
        if best is None or nd < best[0]:
            best = (nd, opt, cand, tgt)

    nd, opt, cand, tgt = best
    print(f"\n=== {args.func}  best {opt}  ({len(tgt)} vs {len(cand)} instructions) ===")
    if nd == 0:
        print("IDENTICAL instruction stream")
    a = [norm(t) for _w, t in cand]
    b = [norm(t) for _w, t in tgt]
    sm = difflib.SequenceMatcher(None, a, b)
    for op, i1, i2, j1, j2 in sm.get_opcodes():
        if op == "equal":
            if args.show_all:
                for k in range(i1, i2):
                    print(f"    {b[j1 + (k - i1)]}")
            continue
        if op == "replace":
            for k in range(max(i2 - i1, j2 - j1)):
                c = cand[i1 + k][1] if i1 + k < i2 else ""
                t = tgt[j1 + k][1] if j1 + k < j2 else ""
                print(f"  C {c:<40} | R {t}")
        elif op == "delete":
            for k in range(i1, i2):
                print(f"  C {cand[k][1]:<40} | R -")
        else:
            for k in range(j1, j2):
                print(f"  C {'-':<40} | R {tgt[k][1]}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
