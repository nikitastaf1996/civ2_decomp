#!/usr/bin/env python3
"""Shared m2c post-processing helpers for the automated matching pipeline.

Extracted from tools/auto_match_sweep.py so that the sweep and the multi-flag
sweep (tools/sweep_flags.py) share one implementation.
"""
import os
import re

OP_TO_TYPE = {
    "lbu": "u8",
    "lb": "s8",
    "sb": "s8",
    "lhu": "u16",
    "lh": "s16",
    "sh": "s16",
    "lw": "s32",
    "sw": "s32",
}

def replace_deref_add(c, sym_lo_type):
    # Find all occurrences of `*(` where the balanced parentheses contain `&D_XXXXXXXX`
    out = []
    i = 0
    n = len(c)
    while i < n:
        idx = c.find("*(", i)
        if idx == -1:
            out.append(c[i:])
            break
        out.append(c[i:idx])
        # Find matching ')' for '*(' at idx+1
        depth = 0
        j = idx + 1
        while j < n:
            if c[j] == "(":
                depth += 1
            elif c[j] == ")":
                depth -= 1
                if depth == 0:
                    break
            j += 1
        if j >= n:
            out.append(c[idx:])
            break
        inner = replace_deref_add(c[idx+2:j], sym_lo_type)
        # Only match &D_XXXXXXXX that is NOT already preceded by (s8 *)
        m_sym = re.search(r"(?<!\*)&(D_[0-9A-F]{8})\b", inner)
        if m_sym and "+" in inner:
            sym = m_sym.group(1)
            t = sym_lo_type.get(sym, "s32")
            inner_fixed = re.sub(r"(?<!\*)&(D_[0-9A-F]{8})\b", r"((s8 *)&\1)", inner)
            out.append(f"*({t} *)({inner_fixed})")
        else:
            out.append(f"*({inner})")
        i = j + 1
    return "".join(out)

def enhance_c(binary, name, f, raw_c):
    asm_txt = open(f).read() if os.path.exists(f) else ""
    # Exact restore of raw m2c output:
    c = raw_c.replace("*(s32 *)((s8 *)&", "*(&")
    # Replace void * declarations with s32 * so dereferencing never gives void expression error

    sym_lo_type = {}
    for line in asm_txt.splitlines():
        m = re.search(r"\b(lbu|lb|sb|lhu|lh|sh|lw|sw)\b.*%lo\((\w+)\)", line)
        if m:
            op, sym = m.group(1), m.group(2)
            sym_lo_type.setdefault(sym, OP_TO_TYPE[op])

    c = replace_deref_add(c, sym_lo_type)

    # For any remaining uncast &D_XXXX involved in + (e.g. (var_s1 * 4) + &D_80158748), cast &D_XXXX to (void *)&D_XXXX
    c = re.sub(r"(\+\s*)&(D_[0-9A-F]{8})\b", r"\1(void *)&\2", c)
    c = re.sub(r"(?<!\*)&(D_[0-9A-F]{8})(\s*\+)", r"(void *)&\1\2", c)

    # Fix missing leading arg0/arg1/arg2 in function definition
    def fix_sig(m):
        ret, fn, params = m.group(1), m.group(2), m.group(3).strip()
        if not params or params == "void":
            return m.group(0)
        plist = [p.strip() for p in params.split(",")]
        arg_nums = []
        for p in plist:
            ma = re.search(r"\barg(\d+)$", p)
            if ma:
                arg_nums.append(int(ma.group(1)))
        if arg_nums and arg_nums != list(range(max(arg_nums) + 1)):
            existing = {}
            for p in plist:
                ma = re.search(r"\barg(\d+)$", p)
                if ma:
                    existing[int(ma.group(1))] = p
            new_plist = [existing.get(k, f"s32 arg{k}") for k in range(max(arg_nums) + 1)]
            return f"{ret}{fn}({', '.join(new_plist)}) {{"
        return m.group(0)
    c = re.sub(r"^([A-Za-z0-9_ *]+?\b)(func_[0-9A-F]{8})\(([^)]*)\)\s*\{", fix_sig, c, flags=re.M)
    return c
