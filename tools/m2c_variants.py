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


# m2c's rendering of a variable index off a global:
#     *(T *)(((s8 *)&SYM) + EXPR)
PTR_ARITH_HEAD = re.compile(
    r"\*\(\s*(?P<ty>\w+)\s*\*\s*\)\s*\(\s*\(\s*\(s8 \*\)\s*&\s*(?P<sym>\w+)\s*\)\s*\+\s*")
SCALE_RE = re.compile(r"^(?P<base>.+?)\s*\*\s*(?P<n>0[xX][0-9A-Fa-f]+|\d+)$")


def _strip_outer_parens(text):
    """Drop the parentheses that wrap a whole expression, and only those."""
    text = text.strip()
    while text.startswith("(") and _balanced_end(text, 0) == len(text):
        text = text[1:-1].strip()
    return text


def _balanced(body, start, open_depth=1):
    """Return (text, end) for the group that starts open at `start`."""
    depth, i = open_depth, start
    while i < len(body) and depth:
        c = body[i]
        if c in "([":
            depth += 1
        elif c in ")]":
            depth -= 1
        i += 1
    return body[start:i - 1], i


def arrayify_indexed(body):
    """Rewrite `*(T *)(((s8 *)&SYM) + EXPR)` as `SYM[IDX]` with an array declaration.

    cc1 emits `lb $2, SYM($3)` for an array index and the maspsx wrapper expands it
    into the retail `lui $at,%hi(SYM)` / `addu $at,$at,$3` / `lb $2,%lo(SYM)($at)`
    sequence.  The pointer-arithmetic spelling produces the same three instructions
    but *without* the `%lo` relocation, and it also fixes the order in which the
    operands are evaluated, so drafts that look right stop matching on a handful of
    registers.  407 of the 772 unmatched CIV2 functions carry this shape.

    The byte offset m2c prints is scaled by the access type; for `s8`/`u8` the index
    is the offset itself, and for wider types it is only rewritten when the offset is
    literally `X * sizeof` (a division would not survive cc1's own folding).  A symbol
    is only rewritten when *every* access to it has the same type and none of its
    other uses is a scalar read.
    """
    occurrences = {}
    for m in PTR_ARITH_HEAD.finditer(body):
        expr, end = _balanced(body, m.end())
        occurrences.setdefault(m.group("sym"), []).append(
            (m.start(), end, m.group("ty"), expr))

    if not occurrences:
        return None

    edits = []
    for sym, hits in occurrences.items():
        types = {t for _, _, t, _ in hits}
        if len(types) != 1:
            continue
        ty = types.pop()
        size = TYPE_ALIGN.get(ty, 4)
        indices = []
        for start, end, _t, expr in hits:
            if size == 1:
                indices.append((start, end, expr))
                continue
            m = SCALE_RE.match(_strip_outer_parens(expr))
            if not m or int(m.group("n"), 0) != size:
                break
            indices.append((start, end, m.group("base").strip()))
        if len(indices) != len(hits):
            continue
        # Every other mention of the symbol must be an address taken for a call.
        residual = body
        for start, end, _ in indices:
            residual = residual.replace(body[start:end], "\0" * (end - start), 1)
        decl_re = re.compile(r"^extern\s+\w+\s+" + re.escape(sym) + r";[ \t]*$", re.M)
        if not decl_re.search(residual):
            continue
        residual = decl_re.sub("", residual)
        residual = re.sub(r"&" + re.escape(sym) + r"\b", "", residual)
        if re.search(r"\b" + re.escape(sym) + r"\b", residual):
            continue
        d = decl_re.search(body)
        edits.append((d.start(), d.end(), f"extern {ty} {sym}[];"))
        edits.extend((start, end, f"{sym}[{idx}]") for start, end, idx in indices)

    if not edits:
        return None
    # Every mutation is applied in one descending pass: rewriting a declaration
    # first shortens the body and invalidates the offsets recorded for the
    # accesses that follow it.
    for start, end, rep in sorted(edits, key=lambda e: e[0], reverse=True):
        body = body[:start] + rep + body[end:]
    return body


# `(void *)&D_80133CF4` -- m2c renders a global address added into a computed sum as
# the *second* operand of a nested addition.
ADDR_TERM_RE = re.compile(r"\(\s*(?:void|s32|u32|s16|u16|s8|u8)\s*\*?\s*\)\s*&\s*(?P<sym>\w+)")


def _operand_start(text, end):
    """Start index of the operand that ends just before `end` (whitespace skipped)."""
    i = end
    while i > 0 and text[i - 1] in " \t\n":
        i -= 1
    if i and text[i - 1] == ")":
        depth = 0
        while i > 0:
            i -= 1
            if text[i] == ")":
                depth += 1
            elif text[i] == "(":
                depth -= 1
                if depth == 0:
                    return i
        return 0
    while i > 0 and (text[i - 1].isalnum() or text[i - 1] in "_."):
        i -= 1
    return i


def _balanced_end(text, open_idx):
    """Index just past the group that opens at `open_idx`."""
    depth = 0
    for i in range(open_idx, len(text)):
        if text[i] in "([":
            depth += 1
        elif text[i] in ")]":
            depth -= 1
            if depth == 0:
                return i + 1
    return len(text)


def fix_address_term_order(body):
    """Move a global-address term to the front of its addition chain.

    m2c renders `addr + A + B` as `A + (B + addr)`, and cc1 then evaluates the `B`
    term first; the retail order is the opposite, and it decides which register each
    scaled term lands in.  Rewriting the sum as `(addr + A) + B` restores both the
    evaluation order and the register assignment (func_800B8E8C).  ~170 accesses in
    the unmatched CIV2 drafts share this shape -- it is the companion of the `$at`
    expansion, which is why the two appear together.
    """
    def skip_ws_back(pos):
        while pos > 0 and body[pos - 1] in " \t\n":
            pos -= 1
        return pos

    changed = False
    for m in reversed(list(ADDR_TERM_RE.finditer(body))):
        addr = m.group(0)
        # Structure: `<L> + ( <R> + <addr> )`.
        plus2 = skip_ws_back(m.start())
        if plus2 == 0 or body[plus2 - 1] != "+":
            continue
        r_end = plus2 - 1
        r_start = _operand_start(body, r_end)
        open_inner = skip_ws_back(r_start)
        if open_inner == 0 or body[open_inner - 1] != "(":
            continue
        open_inner -= 1
        close_inner = _balanced_end(body, open_inner)
        if body[m.end():close_inner - 1].strip():
            continue
        plus1 = skip_ws_back(open_inner)
        if plus1 == 0 or body[plus1 - 1] != "+":
            continue
        l_end = plus1 - 1
        l_start = _operand_start(body, l_end)
        l_text = body[l_start:l_end].strip()
        r_text = body[r_start:r_end].strip()
        if not l_text or not r_text:
            continue
        body = body[:l_start] + f"({addr} + {l_text}) + {r_text}" + body[close_inner:]
        changed = True
    return body if changed else None


# m2c keeps the byte offset and the element index of a loop as two variables:
#     var_v0 = 0 * 4;
#     do {
#         *(s32 *)(var_v0 + arg0) = 0;
#         var_v1 += 1;
#         var_v0 = var_v1 * 4;
#     } while (var_v1 < 2);
# The retail loop has a single induction variable and scales it in the body, so
# the extra variable moves the `sll` into the branch delay slot and adds a dead
# `addu` at the top.  Folding the offset back into the index (func_80042938)
# restores the loop.
INDUCT_INIT_RE = re.compile(r"^(?P<ind>[ \t]+)(?P<a>\w+) = 0 \* (?P<n>\d+);[ \t]*$", re.M)
INDUCT_STEP_RE = re.compile(r"^(?P<ind>[ \t]+)(?P<a>\w+) = (?P<b>[A-Za-z_]\w*) \* (?P<n>\d+);[ \t]*$", re.M)


def fold_induction_offsets(body):
    """Fold an m2c offset variable back into the index expression of its loop.

    m2c keeps the byte offset and the element index as two separate loop variables
    (`var_v0 = 0 * 4; ... var_v0 = var_v1 * 4;`).  The retail loop has a single
    induction variable and scales it in the body, so the extra variable moves the
    `sll` into the branch delay slot and leaves a dead `addu` at the loop head.
    Folding the offset into the index (func_80042938) restores the loop exactly.

    One fold at a time: every rewrite shifts the offsets of everything after it,
    so the matches are recomputed from the rewritten text before the next fold.
    """
    decl_re = re.compile(r"^\s*(?:s32|u32|s16|u16|s8|u8|M2C_UNK|void)\s*\*?\s*(\w+)\s*;")

    def fold_once(text):
        for init in INDUCT_INIT_RE.finditer(text):
            a, n = init.group("a"), init.group("n")
            steps = [m for m in INDUCT_STEP_RE.finditer(text)
                     if m.group("a") == a and m.group("n") == n]
            if len(steps) != 1:
                continue
            b = steps[0].group("b")
            # Only the two assignments may mention the offset: any further use is
            # rewritten, so a variable that is also read before its first
            # assignment is left alone.
            stripped = text
            for span in sorted([init.span(), steps[0].span()], reverse=True):
                stripped = stripped[: span[0]] + stripped[span[1]:]
            if len(re.findall(r"\b" + re.escape(a) + r"\b", stripped)) \
                    != len(re.findall(r"\b" + re.escape(a) + r"\b", text)) - 2:
                continue
            if not re.search(r"\b" + re.escape(a) + r"\b", stripped):
                continue
            # A declaration keeps the old name; only uses are folded.
            out = []
            for line in stripped.splitlines():
                if not decl_re.match(line):
                    line = re.sub(r"\b" + re.escape(a) + r"\b", f"({b} * {n})", line)
                out.append(line)
            return "\n".join(out) + ("\n" if stripped.endswith("\n") else "")
        return None

    changed = False
    while True:
        nxt = fold_once(body)
        if nxt is None or nxt == body:
            break
        body, changed = nxt, True
    return body if changed else None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default="civ2")
    ap.add_argument("--in", dest="src", default=None)
    ap.add_argument("--out", dest="dst", default=None)
    ap.add_argument("--only-file", default=None,
                    help="File with one function name per line; rewrite only those.")
    ap.add_argument("--passes", default="sdiv,stack,halfword,rmw,initorder,ubyte,arrindex,addrfirst,foldind",
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
            ("arrindex", arrayify_indexed),
            ("addrfirst", fix_address_term_order),
            ("foldind", fold_induction_offsets),
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
