#!/usr/bin/env python3
"""Generate alternative m2c drafts from the cache, then let the sweep try both.

`tools/auto_match_sweep.py` compiles the *literal* m2c output.  A handful of
cc1 behaviours make that literal output a near-miss even when the retail source
is expressible: this script rewrites the drafts into the equivalent spellings
that reproduce them, writing a second cache file that the sweep can be pointed
at with `--cache`.

Currently implemented rewrites:

  `WidenSignedHalfwordSubtract`
    m2c renders `(s32) (s16) (A - B)` for a `lh` / `subu` / `sll` / `sra`
    sequence. cc1 happily folds the sign-extending loads away and emits
    `lhu` + shifts instead -- a different encoding. Routing the two operands
    through `s32` temporaries first makes cc1 keep the `lh` loads. This is what
    matched func_800929B8, func_80092164 and func_800B1C78.

Usage:
    python3 tools/m2c_variants.py [--bin slus|civ2] [--in  CACHE] [--out CACHE]
"""
import argparse
import os
import pickle
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from m2c_postprocess import enhance_c  # noqa: E402

# `<lhs> = (s32) (s16) (<a> - <b>);`  -- m2c's rendering of the retail
# `lh/lh/subu/sll/sra` idiom.
SUB_RE = re.compile(
    r"^([ \t]*)(.+?)\s*=\s*\(s32\)\s*\(s16\)\s*\((.+?)\s*-\s*(.+?)\);\s*$",
    re.M,
)


def widen_signed_halfword_subtract(body, counter):
    """Rewrite `lhs = (s32)(s16)(a - b);` into `s32` temporaries + a cast."""
    names = []

    def repl(m):
        indent, lhs, a, b = m.group(1), m.group(2), m.group(3), m.group(4)
        if "(" in a.replace("(", "", 1) and ")" not in a:
            return m.group(0)
        t0 = f"var_t{counter[0]}"
        t1 = f"var_t{counter[0] + 1}"
        counter[0] += 2
        names.extend([t0, t1])
        return (
            f"{indent}{t0} = {a};\n"
            f"{indent}{t1} = {b};\n"
            f"{indent}{lhs} = (s16) ({t0} - {t1});"
        )

    out = SUB_RE.sub(repl, body)
    if not names:
        return None
    decls = "".join(f"    s32 {n};\n" for n in names)
    # Insert the temporaries after the opening brace of the function.
    out = re.sub(r"(\n\{\n)", r"\1" + decls, out, count=1)
    return out


# `M2C_UNK sp10;` -- m2c's one-word guess for a local object whose address is
# passed to a callee.  The retail frame pins the real size down.
STACK_LOCAL_RE = re.compile(r"^(\s*)M2C_UNK (sp[0-9A-Fa-f]+);\s*$", re.M)
FRAME_RE = re.compile(r"addiu\s+\$sp, \$sp, -(0x[0-9A-Fa-f]+)")
SAVED_RE = re.compile(r"(?:sw|lw)\s+\$\w+, (0x[0-9A-Fa-f]+)\(\$sp\)")


def fix_stack_object_sizes(asm_text, body):
    """Resize `M2C_UNK spXX;` locals to fill the frame up to the saved regs."""
    frame_m = FRAME_RE.search(asm_text)
    locals_ = STACK_LOCAL_RE.findall(body)
    if not frame_m or not locals_:
        return None
    frame = int(frame_m.group(1), 16)
    saved = [int(o, 16) for o in SAVED_RE.findall(asm_text)]
    top = min([o for o in saved if o < frame] or [frame])

    changed = False

    def repl(m):
        nonlocal changed
        indent, name = m.group(1), m.group(2)
        off = int(name[2:], 16)
        size = top - off
        if size < 8 or size % 4:
            return m.group(0)
        changed = True
        return f"{indent}M2C_UNK {name}[{size // 4}];"

    body = STACK_LOCAL_RE.sub(repl, body)
    return body if changed else None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--in", dest="src", default=None)
    ap.add_argument("--out", dest="dst", default=None)
    args = ap.parse_args()

    src = args.src or f"/tmp/m2c_cache_{args.binary}.pkl"
    dst = args.dst or f"/tmp/m2c_cache_{args.binary}_v2.pkl"

    results = []
    rewritten = 0
    for (name, path, raw) in pickle.load(open(src, "rb")):
        if not raw:
            results.append((name, path, raw))
            continue
        code = enhance_c(args.binary, name, path, raw)
        asm_path = os.path.join(
            os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
            "asm", "us", args.binary, "nonmatchings", "game", f"{name}.s",
        )
        asm_text = open(asm_path).read() if os.path.exists(asm_path) else ""
        variant = fix_stack_object_sizes(asm_text, code) or widen_signed_halfword_subtract(code, [0])
        if variant is not None:
            rewritten += 1
            code = variant
        results.append((name, path, code))
    pickle.dump(results, open(dst, "wb"))
    print(f"[{args.binary}] {rewritten} drafts rewritten -> {dst}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
