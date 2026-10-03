#!/usr/bin/env python3
"""Re-bind the call sites GNU C rejects after a splice, and nothing else.

Splicing a function that ends up with a proto-typed definition makes every later
call in the same translation unit subject to that prototype.  A call that
legitimately passes a different number of arguments (the MIPS O32 ABI leaves
$a0-$a3 untouched and the callee ignores them) is then a hard error:

    src/civ2/game.c:6216: too few arguments to function `func_800B21FC'

The fix is the same one `tools/splice_matched.py` applies inside newly spliced
bodies: a local alias bound to the same symbol.  This tool drives it from the
*compiler's* diagnostics instead of from a whole-file heuristic -- the heuristic
version re-bound 66 call sites that were already correct, and two of them turned
into parse errors.  Only functions the compiler actually rejects are touched.

    python3 tools/fix_arity.py [--bin civ2|slus] [--rounds 4]
"""
import argparse
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ERR_RE = re.compile(
    r"^(src/\w+/game\.c):(\d+): (?:too (?:few|many) arguments to function|"
    r"conflicting types for) [`'](\w+)'",
)
FUNC_START_RE = re.compile(r"^[A-Za-z_][\w \t*]*?\b(func_[0-9A-F]{8})\s*\(")


def definition_return_type(text, fn):
    m = re.search(rf"^([A-Za-z_][\w \t*]*?)\b{fn}\s*\([^)]*\)\s*\{{", text, flags=re.M)
    if not m:
        return "M2C_UNK"
    ret = re.sub(rf"\b{fn}\b.*$", "", m.group(1)).strip()
    return ret or "M2C_UNK"


def enclosing_block(text, line_no):
    lines = text.split("\n")
    start = None
    for i in range(line_no - 1, -1, -1):
        if FUNC_START_RE.match(lines[i]):
            start = i
            break
    if start is None:
        return None
    own = FUNC_START_RE.match(lines[start]).group(1)
    depth = 0
    end = len(lines)
    for i in range(start, len(lines)):
        depth += lines[i].count("{") - lines[i].count("}")
        if depth == 0 and i > start:
            end = i
            break
    return start, end, own


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bin", dest="binary", action="append", choices=["slus", "civ2"])
    ap.add_argument("--rounds", type=int, default=4)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()
    binaries = args.binary or ["slus", "civ2"]

    for _ in range(args.rounds):
        r = subprocess.run("make -j2", cwd=ROOT, shell=True, capture_output=True, text=True)
        errs = [m for m in (ERR_RE.match(l) for l in (r.stdout + r.stderr).splitlines()) if m]
        if not errs:
            print("no arity errors left")
            return 0
        by_file = {}
        for m in errs:
            by_file.setdefault(m.group(1), []).append((int(m.group(2)), m.group(3)))
        for rel, hits in sorted(by_file.items()):
            if os.path.dirname(rel).split("/")[1] not in binaries:
                continue
            path = os.path.join(ROOT, rel)
            text = open(path).read()
            lines = text.split("\n")
            # Work bottom-up so earlier line numbers stay valid.
            for line_no, callee in sorted(set(hits), reverse=True):
                blk = enclosing_block(text, line_no)
                if not blk:
                    print(f"  ? no enclosing function for {rel}:{line_no}")
                    continue
                start, end, own = blk
                lines = text.split("\n")
                if own == callee:
                    continue
                alias = f"{callee}__{own}"
                body = "\n".join(lines[start:end + 1])
                if f"{alias}()" not in body:
                    ret = definition_return_type(text, callee)
                    decl = f'    {ret} {alias}() __asm__("{callee}");'
                    brace = start + next(i for i, l in enumerate(lines[start:end + 1]) if l.rstrip().endswith("{"))
                    lines.insert(brace + 1, decl)
                body = "\n".join(lines[start:end + 1])
                body = re.sub(rf"(?<![\w]){callee}(?=\s*\()", alias, body)
                body = re.sub(rf'\b{callee}\b(?=\s*\))', callee, body)  # keep __asm__ target
                text = "\n".join(lines[:start] + body.split("\n") + lines[end + 1:])
                print(f"  [{rel}] {own}: re-bound calls to {callee} as {alias}")
            if not args.dry_run:
                open(path, "w").write(text)
        if args.dry_run:
            return 0
    return 1


if __name__ == "__main__":
    sys.exit(main())
