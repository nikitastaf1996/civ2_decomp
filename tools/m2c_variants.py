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


# `var = M2C_FIELD(p, T *, off) OP rhs;` -- m2c lifts the result of an in-place
# field update into a temporary.
RMW_ASSIGN_RE = re.compile(
    r"^(?P<indent>[ \t]*)(?P<var>[A-Za-z_]\w*)\s*=\s*"
    r"M2C_FIELD\((?P<expr>.+?), (?P<ty>\w+) \*, (?P<off>0x[0-9A-Fa-f]+|\d+)\)\s*"
    r"(?P<op>[|&^+\-])\s*(?P<rhs>.+?);[ \t]*$",
    re.M,
)
SCALAR_DECL_RE = (
    r"^[ \t]*(?:s32|u32|M2C_UNK|M2C_UNK32|s16|u16|s8|u8) %s;[ \t]*$"
)


def fix_read_modify_write(body):
    """Fold `var = FIELD OP rhs;` (one per branch) + `FIELD = var;` into `FIELD OP= rhs;`.

    cc1 emits a shared load/store for the compound form: the value is loaded into
    `$v0`, the constant into `$v1` and the result stored once.  Lifting the
    expression into a temporary instead makes cc1 allocate the constant to `$v0`,
    which reverses the operands of the `and`/`or` (`and $v0,$v1,$v0` instead of
    `and $v0,$v0,$v1`) and costs a three-instruction near miss.  This is what
    matched func_800A2910, func_800A29BC and func_800986D0, where each arm of an
    if/else computes the same field and the result is stored once afterwards.
    """
    groups = {}
    for m in RMW_ASSIGN_RE.finditer(body):
        field = (f"M2C_FIELD({m.group('expr')}, {m.group('ty')} *, "
                 f"{m.group('off')})")
        groups.setdefault(m.group("var"), []).append((m, field))

    splice = []
    dead = []
    for var, entries in groups.items():
        field = entries[0][1]
        if any(f != field for _, f in entries):
            continue
        store = f"{field} = {var};"
        if body.count(store) != 1:
            continue
        # Any other use of the temporary would make the fold observable: the
        # variable may only be declared, assigned by these matches and stored.
        uses = len(re.findall(r"\b" + re.escape(var) + r"\b", body))
        decls = len(re.findall(SCALAR_DECL_RE % re.escape(var), body, re.M))
        if uses != decls + len(entries) + 1:
            continue
        pos = body.find(store)
        line_start = body.rfind("\n", 0, pos) + 1
        line_end = body.find("\n", pos) + 1 or len(body)
        if body[line_start:pos].strip():  # not alone on its line: leave it alone
            continue
        splice.append((line_start, line_end, ""))
        for m, _ in entries:
            splice.append((m.start(), m.end(),
                           f"{m.group('indent')}{field} {m.group('op')}= {m.group('rhs')};"))
        if decls == 1:
            dead.append(var)

    if not splice:
        return None
    # Apply every edit right to left so the recorded offsets stay valid.
    for start, end, rep in sorted(splice, key=lambda e: e[0], reverse=True):
        body = body[:start] + rep + body[end:]
    # The temporaries are dead now; their declarations would be unused locals.
    for var in dead:
        m = re.search(SCALAR_DECL_RE % re.escape(var), body, re.M)
        if m and not re.search(r"\b" + re.escape(var) + r"\b", body[m.end():]):
            body = body[: m.start()] + body[m.end() + 1:]
    return body


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
    fired_passes = {}
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
        # Passes are chained: each one only rewrites a construct the others leave
        # alone, and a variant that does not compile to the retail bytes is
        # discarded by the sweep anyway.
        passes = (
            ("stack", lambda c: fix_stack_object_sizes(asm_text, c)),
            ("halfword", lambda c: widen_signed_halfword_subtract(c, [0])),
            ("rmw", fix_read_modify_write),
        )
        fired = []
        for label, fn in passes:
            variant = fn(code)
            if variant is not None:
                code = variant
                fired.append(label)
        if fired:
            rewritten += 1
            for label in fired:
                fired_passes[label] = fired_passes.get(label, 0) + 1
        results.append((name, path, code))
    pickle.dump(results, open(dst, "wb"))
    detail = ", ".join(f"{k}={v}" for k, v in sorted(fired_passes.items()))
    print(f"[{args.binary}] {rewritten} drafts rewritten ({detail}) -> {dst}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
