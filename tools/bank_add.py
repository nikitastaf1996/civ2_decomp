#!/usr/bin/env python3
"""Verify a hand-written function and record it in the persistent match bank.

``tools/auto_match_sweep.py`` writes its verified matches to ``/tmp/matched_<bin>.pkl``,
which is scratch: the sweep rewrites it on every run and it disappears when /tmp is
wiped.  Hand-matched functions live in ``/home/user/bank.json`` instead -- that file is
the *first* source ``tools/splice_matched.py`` reads, so an entry here survives both.

This tool is the only supported way to add an entry, because it refuses to record a
function that is not byte-for-byte identical to the retail executable: it runs
``tools/try_match.py`` over the draft with the requested flags and only writes the bank
when that reports MATCH.  The stored ``code`` is the function definition alone (the
draft's ``#include`` prologue is dropped), which is what the splicer substitutes for the
``INCLUDE_ASM`` line.

Usage:
  tools/bank_add.py draft.c func_800DD590 --opt "-O1 -G8"
  tools/bank_add.py --check                 # re-verify every bank entry
  tools/bank_add.py --list
"""
import argparse
import json
import os
import re
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BANK = "/home/user/bank.json"

# Anything a draft may put before the definition: the shared prologue plus the
# declarations the sweep's translation unit prepends.
PROLOGUE_RE = re.compile(
    r"^\s*#\s*include\b.*$|^\s*void\s*\*?\s*memcpy\s*\(.*$",
    re.M,
)


def load_bank():
    if os.path.exists(BANK):
        with open(BANK) as f:
            return json.load(f)
    return {}


def save_bank(bank):
    tmp = BANK + ".tmp"
    with open(tmp, "w") as f:
        json.dump(bank, f, indent=1, sort_keys=True)
    os.replace(tmp, BANK)


DECL_RE = re.compile(
    r"^(?:extern\s+[^;]+;"
    r"|(?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)[ \t*]+\w+\s*\([^)]*\)\s*;(?:\s*/\* extern \*/)?)$"
)


def definition_text(draft_text, fn):
    """Return the draft's definition of `fn`, with its declarations folded in.

    `splice_matched.py` copies the definition alone into the translation unit, so a
    draft that declares a global or a callee prototype at *file* scope would lose
    those declarations and the spliced TU would stop compiling (`D_80158738
    undeclared`).  Move every file-scope declaration that precedes the definition
    into the body instead, which is where `try_match.py` saw them anyway (it
    compiles the whole draft file).
    """
    start = re.search(rf"(?m)^[A-Za-z_][A-Za-z0-9_* \t]*\b{re.escape(fn)}\s*\(", draft_text)
    if not start:
        raise SystemExit(f"no definition of {fn} found in the draft")
    prologue, body = draft_text[: start.start()], draft_text[start.start():]
    # Drop trailing prose/comments after the definition (a draft may keep notes).
    end = body.rfind("\n}")
    if end != -1:
        body = body[: end + 2]
    body = body.rstrip("\n") + "\n"
    decls = [l.strip() for l in prologue.splitlines() if DECL_RE.match(l.strip())]
    # Keep the last occurrence of each declaration and skip ones the body already has.
    keep, seen = [], set()
    for d in reversed(decls):
        name = re.search(r"\b(D_[0-9A-F]{8}|func_[0-9A-F]{8}|\w+)\s*\(", d)
        key = name.group(1) if name else d
        if key in seen:
            continue
        seen.add(key)
        if d in body or f"extern {d[7:]}" in body:
            continue
        keep.append(d)
    if keep:
        brace = body.index("{")
        nl = body.index("\n", brace)
        injected = "".join(f"\n    {d}" for d in reversed(keep))
        body = body[:nl] + injected + body[nl:]
    return body


def verify(path, fn, binary, opt):
    r = subprocess.run(
        [sys.executable, os.path.join(ROOT, "tools", "try_match.py"),
         path, fn, "--bin", binary, "--opt", opt],
        capture_output=True, text=True,
    )
    return r.returncode == 0 and f"{fn}: MATCH" in r.stdout, r.stdout


def cmd_add(args):
    text = open(args.draft).read()
    if not args.binary:
        # The two executables' text ranges overlap (SLUS .text runs 0x80017FE4
        # ..0x8002C8CC, CIV2's starts at 0x80013F38), so the address alone cannot
        # decide -- ask the split, which has one nonmatching .s per function per
        # executable.
        have = [b for b in ("civ2", "slus")
                if os.path.exists(os.path.join(
                    ROOT, "asm", "us", b, "nonmatchings", "game", f"{args.func}.s"))]
        if len(have) != 1:
            raise SystemExit(f"cannot tell which executable owns {args.func} "
                             f"(found in {have or 'neither'}); pass --bin")
        args.binary = have[0]
    ok, out = verify(args.draft, args.func, args.binary, args.opt)
    if not ok:
        print(out, file=sys.stderr)
        raise SystemExit(f"not a byte-for-byte match: refusing to bank {args.func}")
    bank = load_bank()
    bank[args.func] = {
        "bin": args.binary,
        "opt": args.opt,
        "code": definition_text(text, args.func),
    }
    save_bank(bank)
    print(f"banked {args.func} ({args.binary}, {args.opt}) in {BANK} "
          f"[{len(bank)} entries]")
    return 0


def fn_address(fn):
    m = re.match(r"func_([0-9A-Fa-f]{8})$", fn)
    if not m:
        raise SystemExit(f"not a func_XXXXXXXX name: {fn}")
    return m.group(1)


def cmd_list(_args):
    bank = load_bank()
    for fn, rec in sorted(bank.items()):
        print(f"{fn}  {rec['bin']:5s}  {rec['opt']:12s}  {len(rec['code'].splitlines()):4d} lines")
    print(f"{len(bank)} entries in {BANK}")
    return 0


def cmd_check(_args):
    bank = load_bank()
    bad = []
    for fn, rec in sorted(bank.items()):
        with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as f:
            f.write('#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n')
            f.write(rec["code"])
            path = f.name
        try:
            ok, out = verify(path, fn, rec["bin"], rec["opt"])
        finally:
            os.unlink(path)
        if not ok:
            bad.append(fn)
            print(f"FAIL {fn}: {out.strip().splitlines()[0] if out.strip() else 'no output'}")
        else:
            print(f"ok   {fn}")
    print(f"{len(bank) - len(bad)}/{len(bank)} entries verified")
    return 1 if bad else 0


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("draft", nargs="?")
    ap.add_argument("func", nargs="?")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default=None)
    ap.add_argument("--opt", default="-O1 -G8")
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--check", action="store_true")
    args = ap.parse_args(argv)
    if args.list:
        return cmd_list(args)
    if args.check:
        return cmd_check(args)
    if not (args.draft and args.func):
        ap.error("give a draft and a function name (or --list / --check)")
    return cmd_add(args)


if __name__ == "__main__":
    raise SystemExit(main())
