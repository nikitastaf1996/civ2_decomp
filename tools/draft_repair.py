#!/usr/bin/env python3
"""Repair the C89 constructs that keep m2c drafts from compiling at all.

The sweep drops a draft the moment cc1 rejects it, and m2c drafts are rejected
en masse for two reasons that have nothing to do with the function itself:

* ``too few arguments to function `f'`` — m2c prints a full prototype for every
  callee it sees, but a call site that supplies fewer arguments than the callee's
  declaration is a constraint violation in C89 even though it is perfectly legal
  at the MIPS O32 level (the untouched $a4-$a7 slots simply keep whatever the
  caller left there).  The splicer already deals with this by emitting an
  unprototyped declaration; doing the same here makes the draft compilable.
* ```X' undeclared`` — m2c can emit a call or a global read whose declaration it
  never printed (it does this whenever the symbol is first seen in a delay slot,
  and for the bare ``sp`` base of a stack array it cannot type).

Both repairs are purely additive: a draft that already compiles is returned
untouched, and anything they produce still has to match the retail bytes before
the sweep records it, so a wrong repair can only waste a compile.

Usage:
  tools/draft_repair.py draft.c [--func func_80013F50]     # rewrite in place
  python3 -c "import draft_repair; print(draft_repair.repair(open('d.c').read()))"
"""
import argparse
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

TYPE = r"(?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)"
PROTO_RE = re.compile(rf"^([ \t]*)({TYPE}[ \t*]+)(func_[0-9A-F]{{8}})\s*\(([^)]*)\)\s*;(.*)$", re.M)
DEF_RE = re.compile(rf"^[ \t]*{TYPE}[ \t*]+(\w+)\s*\(([^)]*)\)\s*\{{", re.M)
DECL_RE = re.compile(r"^[ \t]*extern[ \t]+[^;=]*?\b(D_[0-9A-F]{8})\b[^;]*;", re.M)


def _arity(params):
    params = params.strip()
    if not params or params == "void":
        return 0
    return len([p for p in re.split(r",(?![^\[]*\])", params)])


def _call_arities(text, name):
    """Argument counts of every call to `name` in `text`."""
    out = []
    for m in re.finditer(r"\b" + re.escape(name) + r"\s*\(", text):
        # Skip the declaration itself.
        line_start = text.rfind("\n", 0, m.start()) + 1
        prefix = text[line_start:m.start()]
        if ";" not in prefix and re.search(rf"{TYPE}[ \t*]+$", prefix):
            continue
        depth = 0
        i = m.end() - 1
        while i < len(text):
            if text[i] == "(":
                depth += 1
            elif text[i] == ")":
                depth -= 1
                if depth == 0:
                    break
            i += 1
        args = text[m.end():i].strip()
        if args == "":
            out.append(0)
        else:
            depth = 0
            n = 1
            for ch in args:
                if ch in "([":
                    depth += 1
                elif ch in ")]":
                    depth -= 1
                elif ch == "," and depth == 0:
                    n += 1
            out.append(n)
    return out


LOCAL_DECL_RE = re.compile(rf"^([ \t]*)({TYPE})[ \t]+(\w+)(\s*;|\s*\[[^\]]*\]\s*;)", re.M)
SAVED_REG_RE = re.compile(r"\b(saved_reg_\w+)\b")


def _frame_size(binary, name):
    """Size of the frame the retail function allocates (`addiu $sp,$sp,-N`)."""
    path = f"{ROOT}/asm/us/{binary}/nonmatchings/game/{name}.s"
    if not os.path.exists(path):
        return None
    m = re.search(r"addiu\s+\$sp, \$sp, -0x([0-9A-F]+)", open(path).read())
    return int(m.group(1), 16) if m else None


def repair(code, binary=None, name=None):
    """Return `code` with callee prototypes widened and missing declarations added."""
    defined = {m.group(1) for m in DEF_RE.finditer(code)}

    # 1. Widen every callee prototype whose call sites disagree with it.  A draft
    #    never defines more than the function under test, so the remaining
    #    prototypes are all callees.
    def widen(m):
        callee, params = m.group(3), m.group(4)
        if callee in defined:
            return m.group(0)
        declared = _arity(params)
        calls = _call_arities(code, callee)
        if calls and any(a != declared for a in calls):
            return f"{m.group(1)}{m.group(2)}{callee}();{m.group(5)}"
        return m.group(0)

    code = PROTO_RE.sub(widen, code)

    # 2. Declare the symbols m2c referenced but never printed.
    declared_funcs = {m.group(3) for m in PROTO_RE.finditer(code)}
    calls = {m.group(1) for m in re.finditer(r"\b(func_[0-9A-F]{8})\s*\(", code)}
    missing_funcs = sorted(calls - declared_funcs - defined)

    declared_data = {m.group(1) for m in DECL_RE.finditer(code)}
    used_data = set(re.findall(r"\b(D_[0-9A-F]{8})\b", code))
    missing_data = sorted(used_data - declared_data)

    if missing_funcs or missing_data:
        lines = [f"M2C_UNK {n}(); /* extern */" for n in missing_funcs]
        lines += [f"extern M2C_UNK {n};" for n in missing_data]
        first = DEF_RE.search(code)
        insert_at = first.start() if first else 0
        code = code[:insert_at] + "\n".join(lines) + "\n" + code[insert_at:]

    # 3. Retype integer locals that the draft dereferences.  m2c cannot always infer
    #    the pointee type and then declares the variable as a plain integer
    #    (`u32 var_s0;` used as `*var_s0 = ...`), which cc1 rejects outright.
    #    Widening the declaration to a byte pointer is the closest spelling the
    #    surrounding expressions imply; a wrong guess can only cost a compile,
    #    because the sweep still requires a byte-exact match.
    def retype(m):
        ind, ty, var, tail = m.group(1), m.group(2), m.group(3), m.group(4)
        if "[" in tail:
            return m.group(0)
        deref = re.search(r"\*\s*" + re.escape(var) + r"\b", code) or \
            re.search(r"\b" + re.escape(var) + r"\s*\[", code)
        if not deref or ty not in ("s32", "u32", "s16", "u16", "s8", "u8", "M2C_UNK"):
            return m.group(0)
        # A variable that is also multiplied/shifted is an index, not a pointer:
        # retyping it would only trade one compile error for another.
        if re.search(r"\b" + re.escape(var) + r"\s*[*\/%<]", code) or \
           re.search(r"[\w\)\]]\s*[*\/%]\s*" + re.escape(var) + r"\b", code):
            return m.group(0)
        return f"{ind}u8 *{var}{tail}"

    code = LOCAL_DECL_RE.sub(retype, code)

    # 4. m2c names the saved frame pointer `saved_reg_fp` but only ever declares the
    #    local it is copied into.  Give the register a plain local so the draft
    #    compiles; the frame it occupies is wrong, so such a draft is only useful as
    #    a near-miss score.
    for reg in sorted(set(SAVED_REG_RE.findall(code))):
        if not re.search(rf"^[ \t]*\w[\w \*]*\b{reg}\b", code, re.M):
            first = DEF_RE.search(code)
            if first:
                code = code[:first.start()] + f"M2C_UNK {reg};\n" + code[first.start():]

    # 5. `sp` is m2c's name for the base of a stack array it could not type.  The
    #    retail prologue pins the frame down, so declare just that many bytes.
    if re.search(r"\bsp\b", code) and not re.search(rf"^[ \t]*\w[\w \*]*\bsp\b", code, re.M):
        size = _frame_size(binary, name) if (binary and name) else None
        first = DEF_RE.search(code)
        if first and size:
            code = code[:first.start()] + f"u8 sp[{size}];\n" + code[first.start():]
    return code


def compiles(code, opt="-O1 -G8"):
    cpp_in = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n' + code
    r = subprocess.run(
        f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{ROOT}/include -D_LANGUAGE_C -DLANGUAGE_C "
        f"-D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM - | "
        f"{ROOT}/bin/gcc-2.7.2-psx/cc1 -quiet {opt} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -w -o - -",
        input=cpp_in, shell=True, capture_output=True, text=True)
    return r.returncode == 0, r.stderr


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("c_file")
    ap.add_argument("--opt", default="-O1 -G8")
    ap.add_argument("--quiet", action="store_true")
    args = ap.parse_args(argv)
    code = open(args.c_file).read()
    ok_before, err = compiles(code, args.opt)
    fixed = repair(code)
    ok_after, err2 = compiles(fixed, args.opt)
    if ok_before:
        if not args.quiet:
            print(f"{args.c_file}: already compiles; left untouched")
        return 0
    open(args.c_file, "w").write(fixed)
    if not args.quiet:
        print(f"{args.c_file}: repaired ({'compiles now' if ok_after else 'still broken'}): "
              f"{err.strip().splitlines()[-1] if err else ''}")
    if not ok_after:
        print(err2, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
