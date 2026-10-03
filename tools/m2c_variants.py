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


# `M2C_FIELD(&D_8011A390, s16 *, 0x52)` -- m2c's spelling for a fixed offset off a
# global.  cc1 folds each of these into `%lo(SYM+OFF)($at)`; the retail code keeps
# the symbol address in a general register and uses it as the base for every
# access, which cc1 only does for struct member references.
FIELD_ACCESS_RE = re.compile(
    r"M2C_FIELD\(&(?P<sym>\w+), (?P<ty>[A-Za-z_0-9]+) \*, (?P<off>0x[0-9A-Fa-f]+|\d+)\)",
)
TYPE_ALIGN = {"s8": 1, "u8": 1, "char": 1, "s16": 2, "u16": 2, "s32": 4, "u32": 4,
              "M2C_UNK": 4, "M2C_UNK8": 1, "M2C_UNK16": 2, "M2C_UNK32": 4}


def structify_globals(body):
    """Rewrite constant-offset global field accesses as struct member accesses.

    NOT part of the default pass list.  Struct member references do make cc1 keep
    the base in a general register (`func_80065F98` needed exactly that), but the
    rewrite is *not* universally better: applied in bulk it costs the three
    instructions `func_80077BF8` is missing and changes no other function's diff
    count in either direction.  Reach for it by hand when the retail build clearly
    materialises a base register and cc1 is folding every access into
    `%lo(SYM+N)($at)` instead.

    Requires at least two accesses to the same symbol, all of them constant
    offsets, non-overlapping and naturally aligned, and no other use of the
    symbol name (a plain `&SYM` or a scalar read would make the two declarations
    conflict).  Gaps become explicit `char _pad_XX[]` members so every field lands
    on its retail offset.  This is what matched func_80065F98 by hand.
    """
    accesses = {}
    for m in FIELD_ACCESS_RE.finditer(body):
        accesses.setdefault(m.group("sym"), []).append(
            (int(m.group("off"), 0), m.group("ty")))
    if not accesses:
        return None

    changed = False
    for sym, hits in accesses.items():
        if len(hits) < 2:
            continue
        # The symbol may only appear in these field accesses, in its own declaration,
        # or as an address taken for a call (`&SYM` still yields the struct's address).
        decl_re = re.compile(r"^extern\s+\w+\s+" + re.escape(sym) + r";[ \t]*$", re.M)
        decls = decl_re.findall(body)
        residual = FIELD_ACCESS_RE.sub("", body)
        residual = decl_re.sub("", residual)
        residual = re.sub(r"&" + re.escape(sym) + r"\b", "", residual)
        if re.search(r"\b" + re.escape(sym) + r"\b", residual):
            continue
        hits = sorted(hits)
        # Natural alignment: cc1 would insert padding we did not ask for.
        if any(off % TYPE_ALIGN.get(ty, 4) for off, ty in hits):
            continue
        if len({off for off, _ in hits}) != len(hits):
            continue
        members, prev_end = [], 0
        ok = True
        for off, ty in hits:
            if off < prev_end:  # overlapping accesses: not a plain field layout
                ok = False
                break
            if off > prev_end:
                members.append(f"    char _pad_{prev_end:02X}[0x{off - prev_end:X}];")
            members.append(f"    {ty} f_{off:02X};")
            prev_end = off + TYPE_ALIGN.get(ty, 4)
        if not ok:
            continue
        struct = "struct S_%s {\n%s\n};\n" % (sym, "\n".join(members))
        body = decl_re.sub("extern struct S_%s %s;" % (sym, sym), body, count=1)
        if struct not in body:
            body = struct + body
        for off, ty in hits:
            body = body.replace(f"M2C_FIELD(&{sym}, {ty} *, 0x{off:X})", f"{sym}.f_{off:02X}")
            body = body.replace(f"M2C_FIELD(&{sym}, {ty} *, {off})", f"{sym}.f_{off:02X}")
        changed = True
    return body if changed else None


# `<cursor> = M2C_FIELD(<base>, T *, OFF);` immediately followed by `<acc> = NULL;`
INIT_ORDER_RE = re.compile(
    r"^(?P<i>[ \t]*)(?P<cursor>\w+) = (?P<load>M2C_FIELD\(.+?\));\n"
    r"(?P=i)(?P<acc>\w+) = NULL;\n(?P=i)if \((?P=cursor) != NULL\) \{",
    re.M,
)


def fix_init_order(body):
    """Move `acc = NULL;` ahead of the sibling load it is compared against.

    m2c emits the load first and the accumulator initialisation second, but the
    retail build keeps the accumulator in a *different* argument register ($a2
    rather than the dead $a0), which cc1 only does when the initialisation is
    scheduled first -- the load can then be sunk into the branch's delay slot.
    This is what matched func_800B2174, func_800B21B8 and func_800B21FC.
    """
    def repl(m):
        i = m.group("i")
        return (f"{i}{m.group('acc')} = NULL;\n"
                f"{i}{m.group('cursor')} = {m.group('load')};\n"
                f"{i}if ({m.group('cursor')} != NULL) {{")

    out, n = INIT_ORDER_RE.subn(repl, body)
    return out if n else None


# m2c's hand-expansion of cc1's signed division by a power of two:
#     var = t >> N;  if (t < 0) { var = (s32) (t + (2**N - 1)) >> N; }
SIGNED_DIV_RE = re.compile(
    r"^(?P<i>[ \t]*)(?P<v>\w+) = (?P<t>\w+) >> (?P<n>0x[0-9A-Fa-f]+|\d+);[ \t]*\n"
    r"(?P=i)if \((?P=t) < 0\) \{[ \t]*\n"
    r"(?P=i)[ \t]+(?P=v) = \(s32\) ?\((?P=t) \+ (?P<k>0x[0-9A-Fa-f]+|\d+)\) >> (?P=n);[ \t]*\n"
    r"(?P=i)\}",
    re.M,
)


def fix_signed_division(body):
    """Collapse m2c's shift + rounding-if back into the division it expands.

    cc1 lowers `x / 4096` (signed, positive power of two) to
    `bgez x, L; sra d, x, N; addiu x, 0xFFF; sra d, x, N`, and m2c renders that
    as an explicit `if`.  Written back as a division, cc1 reproduces the retail
    bytes exactly -- including the rounding add that writes to the *source*
    register rather than the destination.  This is what matched func_80019740.
    """
    def repl(m):
        n = int(m.group("n"), 0)
        k = int(m.group("k"), 0)
        if k != (1 << n) - 1:
            return m.group(0)
        return f"{m.group('i')}{m.group('v')} = {m.group('t')} / 0x{1 << n:X};"

    out, n = SIGNED_DIV_RE.subn(repl, body)
    return out if n else None


def arrayify_globals(body):
    """Declare a fixed-offset global as an array so cc1 folds the offset into the access.

    The mirror image of `structify_globals`: `M2C_FIELD(&D_8012A0E0, s8 *, 0x257E)`
    with a scalar declaration makes cc1 materialise `SYM + 0x257E` in a register and
    then store at offset zero, while the retail build keeps the symbol address clean
    and uses `0x257E($v1)` as the store displacement -- which is what an *array*
    declaration produces (`D_8012A0E0[0x257E] = 0x40;`).  The symbol may still be
    referenced by address (`func_8001B074(&D_8012A0E0, ...)`) since the array
    decays to the same address.  This is what func_80020B10 needs.
    """
    accesses = {}
    for m in FIELD_ACCESS_RE.finditer(body):
        accesses.setdefault(m.group("sym"), []).append(
            (int(m.group("off"), 0), m.group("ty")))
    if not accesses:
        return None

    changed = False
    for sym, hits in accesses.items():
        types = {t for _, t in hits}
        if len(types) != 1:
            continue
        ty = types.pop()
        size = TYPE_ALIGN.get(ty, 4)
        if any(off % size for off, _ in hits):
            continue
        # Every other mention must be an address taken for a call (`&SYM`), never a
        # scalar read: those would still work, but the pass should stay predictable.
        masked = FIELD_ACCESS_RE.sub("", body)
        decl_re = re.compile(r"^extern\s+\w+\s+" + re.escape(sym) + r";[ \t]*$", re.M)
        if not decl_re.search(masked):
            continue
        masked = decl_re.sub("", masked)
        masked = re.sub(r"&" + re.escape(sym) + r"\b", "", masked)
        if re.search(r"\b" + re.escape(sym) + r"\b", masked):
            continue
        body = decl_re.sub(f"extern {ty} {sym}[];", body, count=1)
        for off, t in hits:
            idx = off // size if size > 1 else off
            body = body.replace(f"M2C_FIELD(&{sym}, {t} *, 0x{off:X})", f"{sym}[{idx}]")
            body = body.replace(f"M2C_FIELD(&{sym}, {t} *, {off})", f"{sym}[{idx}]")
        changed = True
    return body if changed else None


# `extern s8 SYM;` with `SYM = 0xE0;` -- cc1 folds the constant to -32 for a signed
# byte, but the retail build materialises 0xE0 itself (`addiu $v0,$zero,0xE0`).
UNSIGNED_CONST_RE = re.compile(r"^extern s8 (\w+);[ \t]*$", re.M)


def fix_unsigned_byte_constants(body):
    """Declare byte-wide globals whose constants are >= 0x80 as `u8`.

    Same rule as the `u8`/`s8` field idiom already in the README, applied to scalar
    stores: `-32` and `0xE0` are the same byte but only one of them assembles to the
    retail `addiu`.  Affects both the declaration and every `M2C_FIELD(..., s8 *, ...)`
    access to the same symbol, since both decide how the constant is materialised.
    """
    changed = False
    for m in list(UNSIGNED_CONST_RE.finditer(body)):
        sym = m.group(1)
        if not re.search(rf"\b{sym} = (?:0x[89A-Fa-f][0-9A-Fa-f]|2[0-5][0-9]);", body):
            continue
        # m2c can declare the same global twice in one draft (a block of externs
        # at the top for the arguments, more inside the body); both must change or
        # the TU fails with "conflicting types".
        body = re.sub(rf"^extern s8 {sym};[ \t]*$", f"extern u8 {sym};", body, flags=re.M)
        body = body.replace(f"M2C_FIELD(&{sym}, s8 *, ", f"M2C_FIELD(&{sym}, u8 *, ")
        changed = True
    return body if changed else None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--in", dest="src", default=None)
    ap.add_argument("--out", dest="dst", default=None)
    ap.add_argument("--only-file", default=None,
                    help="File with one function name per line; rewrite only those.")
    ap.add_argument("--passes", default="sdiv,stack,halfword,rmw,initorder,ubyte",
                    help="Comma-separated rewrite passes to apply (stack, halfword, rmw, "
                         "struct). Each pass is optional, so several caches can be built and "
                         "swept independently instead of betting on one chain.")
    args = ap.parse_args()

    src = args.src or f"/tmp/m2c_cache_{args.binary}.pkl"
    dst = args.dst or f"/tmp/m2c_cache_{args.binary}_v2.pkl"

    wanted = [p.strip() for p in args.passes.split(",") if p.strip()]
    only = None
    if args.only_file:
        only = {l.strip() for l in open(args.only_file) if l.strip()}

    results = []
    rewritten = 0
    fired_passes = {}
    for (name, path, raw) in pickle.load(open(src, "rb")):
        if not raw:
            results.append((name, path, raw))
            continue
        # Entries that are not selected are still enhanced, so that a cache built
        # with --only-file is byte-identical to the full one for those functions.
        code = enhance_c(args.binary, name, path, raw)
        if only is not None and name not in only:
            results.append((name, path, code))
            continue
        asm_path = os.path.join(
            os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
            "asm", "us", args.binary, "nonmatchings", "game", f"{name}.s",
        )
        asm_text = open(asm_path).read() if os.path.exists(asm_path) else ""
        # Passes are chained: each one only rewrites a construct the others leave
        # alone, and a variant that does not compile to the retail bytes is
        # discarded by the sweep anyway.
        passes = (
            ("sdiv", fix_signed_division),
            ("stack", lambda c: fix_stack_object_sizes(asm_text, c)),
            ("halfword", lambda c: widen_signed_halfword_subtract(c, [0])),
            ("rmw", fix_read_modify_write),
            ("initorder", fix_init_order),
            ("ubyte", fix_unsigned_byte_constants),
            ("struct", structify_globals),
        )
        fired = []
        for label, fn in passes:
            if label not in wanted:
                continue
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
    print(f"[{args.binary}] {rewritten} drafts rewritten "
          f"[passes={','.join(wanted)}] ({detail}) -> {dst}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
