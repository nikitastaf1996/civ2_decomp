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
}
RET_S32_FUNCS = {"func_80018BF0", "func_800A8690", "func_800CEE9C", "func_800DD89C"}


def splice_binary(binary: str):
    matched = pickle.load(open(f"/tmp/matched_{binary}.pkl", "rb"))
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
        for fn in ["func_80015A14", "func_80098354"]:
            if fn in matched:
                opt, c = matched[fn]
                c = re.sub(r"(?<!u8 )\*\s*func_800982F4\(", "*(u8 *)func_800982F4(", c)
                matched[fn] = (opt, c)

    game_c_path = os.path.join(ROOT, "src", binary, "game.c")
    game_c = open(game_c_path).read()

    defs = {}
    for m in re.finditer(r"^((?:void|s32|u32|s16|u16|s8|u8)\s+)(func_[0-9A-F]{8})\(void\)", game_c, flags=re.M):
        ret = m.group(1).strip()
        fn = m.group(2)
        if fn not in matched:
            defs[fn] = (ret, "")
    for fn, (opt, c) in matched.items():
        m = re.search(rf"^([A-Za-z0-9_* \t]+?)\b{fn}\(([^)]*)\)\s*\{{", c, flags=re.M)
        ret = m.group(1).strip()
        params = m.group(2).strip()
        defs[fn] = (ret, params)

    sym_first_type = {}
    transformed = {}
    for fn, (opt, c) in sorted(matched.items()):
        c = re.sub(r"^extern\s+M2C_UNK\s+(func_[0-9A-F]{8});", r"M2C_UNK \1(); /* extern */", c, flags=re.M)
        c = re.sub(r"&(func_[0-9A-F]{8})\b", r"(void *)&\1", c)
        c = re.sub(rf"^([A-Za-z0-9_* \t]+?\b{fn})\(void\)\s*\{{", r"\1() {", c, flags=re.M)
        if fn in KR_FUNCS:
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
                    if cargs:
                        return f"{indent}{ret} {callee}({cargs});"
                    return f"{indent}{ret} {callee}();"
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
        if "-O2" in opt:
            c_final = "/* @O2 */\n" + c_final
        transformed[fn] = c_final

    if '#include "m2c_macros.h"' not in game_c:
        game_c = game_c.replace('#include "common.h"\n', '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n')

    game_c = re.sub(r"^((?:void|s32|u32|s16|u16|s8|u8)\s+func_[0-9A-F]{8})\(void\)", r"\1()", game_c, flags=re.M)

    spliced_count = 0
    for fn, c_code in transformed.items():
        pat_asm = rf'INCLUDE_ASM\("asm/us/{binary}/nonmatchings/game",\s*{fn}\);'
        pat_stub = rf'(?:void|s32)\s+{fn}\(\)\s*\{{[^}}]*\}}'
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
