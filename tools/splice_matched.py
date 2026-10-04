#!/usr/bin/env python3
"""
Splices all verified 100%-matching C functions from /tmp/matched_{slus,civ2}.pkl
into src/slus/game.c and src/civ2/game.c, replacing INCLUDE_ASM(...) blocks.
"""
import os
import pickle
import re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

KR_FUNCS = {
    "func_80077D2C", "func_80085D70", "func_80094B2C", "func_800982F4",
    "func_8009BB84", "func_800A0228", "func_800A03CC", "func_80094B70",
    "func_80094B10", "func_800A9088", "func_800D0814", "func_800D085C",
    "func_80084DC4", "func_800D0AC0", "func_800D07A0",
    "func_8007B6A0", "func_8007B798", "func_80098848", "func_800B31E8",
    "func_800B8C60",
    # Called with fewer arguments than it reads: some call sites leave $a1-$a3
    # untouched, which only a K&R-style definition accepts.
    "func_80098324",
    # Various call sites invoke it with no arguments (the callee then reads the
    # incoming $a0), which only a K&R-style definition accepts.
    "func_80095DF0",
}
RET_S32_FUNCS = {"func_80018BF0", "func_800A8690", "func_800CEE9C", "func_800DD89C"}

# Helpers that earlier batches had typed `void`, but which newly spliced callers
# read a value from.  Only the declaration is widened; bodies are left untouched.
PROMOTE_TO_S32 = {
    "civ2": ["func_80070A90"],
    "slus": [],
}


def call_arity_mismatch(game_c: str, fn: str, params: str) -> bool:
    """True if some existing call site of `fn` disagrees with the definition's arity.

    A callee that reads more registers than a caller supplies is legal for the MIPS
    O32 ABI, but only a K&R-style definition lets C89 express both call shapes in one
    translation unit.  Declarations (`TYPE *fn(...);`) are not call sites and are
    skipped; the definition itself is not in `game_c` yet, because a function only
    gets here while it is still an INCLUDE_ASM stub.
    """
    declared = len([p for p in params.split(",") if p.strip()]) if params.strip() and params.strip() != "void" else 0
    for m in re.finditer(rf"\b{re.escape(fn)}\s*\(([^)]*)\)", game_c):
        line_start = game_c.rfind("\n", 0, m.start()) + 1
        prefix = game_c[line_start:m.start()]
        # `s8 *func_800B26A0(...)` / `M2C_UNK func_X(...);` are declarations.
        if re.match(r"\s*(?:[A-Za-z_][\w]*\s*\**\s*)+$", prefix) or ";" in prefix:
            continue
        args = m.group(1)
        actual = len([a for a in args.split(",") if a.strip()]) if args.strip() else 0
        if actual != declared:
            return True
    return False


def trailing_pad_words(binary: str, fn: str) -> int:
    """Number of 4-byte alignment words splat emits after this function's endlabel.

    They live in the function's own nonmatching .s file as an `alabel` block, so a
    C body that replaces the INCLUDE_ASM line silently drops them.  Returns 0 for
    the overwhelmingly common case of no padding.
    """
    path = os.path.join(ROOT, "asm", "us", binary, "nonmatchings", "game", f"{fn}.s")
    if not os.path.exists(path):
        return 0
    with open(path) as f:
        text = f.read()
    m = re.search(rf"^endlabel {re.escape(fn)}\s*$", text, re.M)
    if not m:
        return 0
    rest = text[m.end():]
    if not re.match(r"\s*alabel \w+", rest):
        return 0
    return sum(1 for line in rest.splitlines() if re.match(r"\s*/\*.*?\*/\s", line))


def splice_binary(binary: str):
    # Sources of hand-matched functions, in priority order:
    #   1. /home/user/bank.json - persistent, workspace-backed store (survives /tmp being wiped)
    #   2. /tmp/matched_<binary>.pkl - the sweep tools' scratch output
    matched = {}
    bank_path = "/home/user/bank.json"
    if os.path.exists(bank_path):
        import json

        for fn, rec in json.load(open(bank_path)).items():
            if rec.get("bin", binary) == binary:
                matched[fn] = (rec["opt"], rec["code"])
    pkl_path = f"/tmp/matched_{binary}.pkl"
    if os.path.exists(pkl_path):
        for fn, rec in pickle.load(open(pkl_path, "rb")).items():
            matched.setdefault(fn, rec)
    if binary == "civ2":
        # Exclude jump-table functions whose .rodata jump tables are still in game.rodata.s
        matched.pop("func_800916F0", None)
        matched.pop("func_80094298", None)

    for fn in RET_S32_FUNCS:
        if fn in matched:
            opt, c = matched[fn]
            c = re.sub(rf"^void\s+{fn}\b", f"s32 {fn}", c, flags=re.M)
            c = re.sub(r"\n(    )([^;\n]+;)\n\}$", r"\n\1return \2\n}", c)
            matched[fn] = (opt, c)

    if binary == "civ2":
        if "func_80098494" in matched:
            opt, c = matched["func_80098494"]
            c = re.sub(r"^u8\s+func_80098494\b", "s32 func_80098494", c, flags=re.M)
            matched["func_80098494"] = (opt, c)
        for fn in ["func_80015A14", "func_80098354", "func_8008658C"]:
            if fn in matched:
                opt, c = matched[fn]
                fixed = []
                for line in c.splitlines():
                    # Leave the prototype itself alone; only rewrite real dereferences.
                    if re.match(r"^\s*(?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)\s*\*?\s*func_800982F4\s*\(", line):
                        fixed.append(line)
                    else:
                        fixed.append(re.sub(r"(?<![\w)])\*\s*func_800982F4\(", "*(u8 *)func_800982F4(", line))
                matched[fn] = (opt, "\n".join(fixed))

    game_c_path = os.path.join(ROOT, "src", binary, "game.c")
    game_c = open(game_c_path).read()

    # Newly spliced callers read $v0 from these helpers, which earlier batches had
    # declared as `void`.  Only the declaration changes; the bodies are untouched,
    # so the already-verified codegen is unaffected.  Done before `defs` is built so
    # that both the definitions and the per-function declarations pick up the type.
    for fn in PROMOTE_TO_S32[binary]:
        game_c = re.sub(rf"\bvoid\s+({fn}\s*\()", r"s32 \1", game_c)

    defs = {}
    for m in re.finditer(
        r"^((?:void|s32|u32|s16|u16|s8|u8)\s+)(func_[0-9A-F]{8})\(([^)]*)\)\s*\{?",
        game_c,
        flags=re.M,
    ):
        ret = m.group(1).strip()
        fn = m.group(2)
        params = m.group(3).strip()
        if params == "void":
            params = ""
        if fn not in matched:
            defs[fn] = (ret, params)
    for fn, (opt, c) in matched.items():
        m = re.search(rf"^([A-Za-z0-9_* \t]+?)\b{fn}\(([^)]*)\)\s*\{{", c, flags=re.M)
        ret = m.group(1).strip()
        params = m.group(2).strip()
        defs[fn] = (ret, params)

    # Make pre-existing declarations of the functions we are about to splice agree with
    # their definitions.  A caller that declares `M2C_UNK func_X();` while the function is
    # later defined as `void func_X(s32, ...)` is rejected under C89 ("conflicting types"),
    # and only the definition can be considered authoritative.
    for fn, (opt, c) in matched.items():
        m = re.search(rf"^([A-Za-z0-9_* \t]+?)\b{fn}\(([^)]*)\)\s*\{{\s*$", c, flags=re.M)
        if not m:
            continue
        new_ret = m.group(1).strip()
        # Deliberately left unprototyped: some call sites legitimately pass fewer arguments
        # than the function reads (the MIPS O32 ABI leaves the rest of $a0-$a3 untouched),
        # which an unprototyped declaration permits while keeping the caller's codegen intact.
        decl_re = re.compile(
            rf"^([ \t]*)(?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)[ \t*]+\b{fn}\([^)]*\);(?:[ \t]*/\* extern \*/)?$",
            re.M,
        )
        game_c = decl_re.sub(
            lambda mm, r=new_ret, f=fn: f"{mm.group(1)}{r} {f}();", game_c
        )

    # Drafts may be written with the whole function on one line.  The code below relies on
    # the definition's opening brace ending its line (that is where the collected externs
    # get injected), so expand single-line bodies here.
    def expand_body(c):
        return re.sub(
            r"^([^\n]*\bfunc_[0-9A-F]{8}\s*\([^)]*\)\s*\{)[ \t]*(?=\S)",
            r"\1\n    ",
            c,
            flags=re.M,
        )

    matched = {fn: (opt, expand_body(c)) for fn, (opt, c) in matched.items()}

    sym_first_type = {}
    transformed = {}
    for fn, (opt, c) in sorted(matched.items()):
        c = re.sub(r"^extern\s+M2C_UNK\s+(func_[0-9A-F]{8});", r"M2C_UNK \1(); /* extern */", c, flags=re.M)
        c = re.sub(r"&(func_[0-9A-F]{8})\b", r"(void *)&\1", c)
        c = re.sub(rf"^([A-Za-z0-9_* \t]+?\b{fn})\(void\)\s*\{{", r"\1() {", c, flags=re.M)
        # A call site that supplies a different number of arguments than the definition
        # reads cannot coexist with a prototype under C89; a K&R-style definition accepts
        # both call shapes.  Decide once, from the definition's own parameter list.
        sig = re.search(rf"^[A-Za-z0-9_* \t]+?\b{fn}\(([^)]*)\)\s*\{{\s*$", c, flags=re.M)
        use_kr = fn in KR_FUNCS or (sig is not None and call_arity_mismatch(game_c, fn, sig.group(1)))
        if use_kr:
            m = re.search(rf"^([A-Za-z0-9_* \t]+?\b{fn})\(([^)]+)\)\s*\{{", c, flags=re.M)
            if m and m.group(2).strip() != "void":
                plist = [p.strip() for p in m.group(2).split(",")]
                pnames = [re.search(r"\b(\w+)$", p).group(1) for p in plist]
                joined = ", ".join(pnames)
                header = f"{m.group(1)}({joined})\n" + "\n".join(f"    {p};" for p in plist) + "\n{"
                c = c[:m.start()] + header + c[m.end():]
        lines = c.splitlines()
        ext_lines = []
        body_lines = []
        in_body = False
        alias_map = {}

        def fix_decl_line(l_str, indent="    "):
            s = l_str.strip()
            m_ext = re.match(r"^((?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)[ \t*]+)\b(func_[0-9A-F]{8})\(([^)]*)\);(?:\s*/\* extern \*/)?$", s)
            if m_ext:
                callee = m_ext.group(2)
                cargs = m_ext.group(3).strip()
                if callee in defs:
                    ret, dparams = defs[callee]
                    if "..." in dparams:
                        return f"{indent}{ret} {callee}({dparams});"
                    n_def = len([p for p in dparams.split(",") if p.strip()]) if dparams else 0
                    n_call = len([p for p in cargs.split(",") if p.strip()]) if cargs else 0
                    if n_call != n_def:
                        # This call site disagrees with the callee's own definition about
                        # how many arguments are passed.  That is legal at the MIPS O32
                        # level -- the callee simply reads $a0-$a3, and a caller that
                        # supplies fewer arguments leaves the rest of the registers
                        # untouched -- but GNU C rejects two such declarations for the same
                        # external name ("too few arguments" / "conflicting types").
                        # Bind an alias to the same symbol instead, and rename the calls:
                        # the emitted assembly is unchanged, because the alias *is* the
                        # callee's symbol and an unprototyped declaration accepts any
                        # number of arguments.
                        alias = f"{callee}__{fn}"
                        alias_map[callee] = alias
                        return f'{indent}{ret} {alias}({cargs}) __asm__("{callee}");'
                    # The callee is defined elsewhere in this file, so its own parameter
                    # list is authoritative: reusing the call-site's types here is what
                    # produces "conflicting types for ..." errors.
                    return f"{indent}{ret} {callee}({dparams});" if dparams else f"{indent}{ret} {callee}();"
                return f"{indent}{s}"
            m_var = re.match(r"^extern\s+(.+?)\b(D_[0-9A-F]{8})(\[[^\]]*\])?;$", s)
            if m_var:
                vtype = m_var.group(1).strip()
                vsym = m_var.group(2)
                varr = m_var.group(3) or ""
                full_type = f"{vtype} {varr}".strip()
                if vsym not in sym_first_type:
                    sym_first_type[vsym] = full_type
                    return f"{indent}extern {vtype} {vsym}{varr};"
                elif sym_first_type[vsym] != full_type:
                    alias = f"{vsym}__{fn}"
                    alias_map[vsym] = alias
                    return f'{indent}extern {vtype} {alias}{varr} __asm__("{vsym}");'
                return f"{indent}extern {vtype} {vsym}{varr};"
            return indent + s if not l_str.startswith(" ") else l_str

        for l in lines:
            if not in_body and (l.startswith("extern ") or l.endswith("/* extern */")):
                ext_lines.append(fix_decl_line(l, "    "))
            else:
                if in_body:
                    s = l.strip()
                    if s.startswith("extern ") or re.match(r"^(?:M2C_UNK|void|s32|u32|s16|u16|s8|u8)[ \t*]+\bfunc_[0-9A-F]{8}\([^)]*\);$", s):
                        l = fix_decl_line(l, "    ")
                    elif alias_map:
                        for orig_sym, alias_sym in alias_map.items():
                            l = re.sub(rf"\b{orig_sym}\b", alias_sym, l)
                body_lines.append(l)
                if not in_body and l.endswith("{"):
                    in_body = True
                    body_lines.extend(ext_lines)
        c_final = "\n".join(body_lines)
        # A handful of functions are followed by an alignment pad that splat emits
        # *inside* the same .s file (`alabel D_XXXXXXXX` after `endlabel`).  Splicing
        # the C body removes those bytes, which shifts every later function by the
        # pad size and breaks the link layout even though the function itself is
        # byte-identical.  Re-emit the pad as file-scope .word directives.
        pad_words = trailing_pad_words(binary, fn)
        if pad_words:
            c_final += "\n" + "\n".join('__asm__(".word 0x00000000");' for _ in range(pad_words))
        opt_flags = opt.strip()
        if opt_flags == "-O2 -G8":
            c_final = "/* @O2 */\n" + c_final
        elif opt_flags != "-O1 -G8":
            c_final = f"/* @CFLAGS: {opt_flags} */\n" + c_final
        transformed[fn] = c_final

    if '#include "m2c_macros.h"' not in game_c:
        game_c = game_c.replace('#include "common.h"\n', '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n')

    game_c = re.sub(r"^((?:void|s32|u32|s16|u16|s8|u8)\s+func_[0-9A-F]{8})\(void\)", r"\1()", game_c, flags=re.M)

    spliced_count = 0
    for fn, c_code in transformed.items():
        pat_asm = rf'INCLUDE_ASM\("asm/us/{binary}/nonmatchings/game",\s*{fn}\);'
        # Only an *empty* body counts as a stub: matching "up to the first closing brace"
        # would truncate an already-spliced body at its first nested brace and append the
        # draft after it, leaving an orphan brace behind.
        pat_stub = rf'(?:void|s32)\s+{fn}\(\)\s*\{{\s*\}}'
        if re.search(pat_asm, game_c):
            game_c = re.sub(pat_asm, lambda _: c_code, game_c, count=1)
            spliced_count += 1
        elif re.search(pat_stub, game_c):
            game_c = re.sub(pat_stub, lambda _: c_code, game_c, count=1)
            spliced_count += 1

    with open(game_c_path, "w") as f:
        f.write(game_c)
    print(f"[{binary}] Spliced {spliced_count} matched C functions into {game_c_path}")


if __name__ == "__main__":
    splice_binary("slus")
    splice_binary("civ2")
