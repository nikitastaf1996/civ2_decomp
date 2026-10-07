#!/usr/bin/env python3
"""Pin a near-miss draft's variables to the callee-saved registers retail used.

Both halves of the 29-caller pair `func_80070600` / `func_800706F8` failed only
because cc1 handed the *saved* registers to two variables in the opposite order than
the original compiler did -- something the source cannot express.  Retail's prologue
states the mapping outright:

    addu $s0, $a1, $zero        ; the variable assigned from arg1 lives in $s0
    addu $s3, $a3, $zero        ; arg3 is kept in $s3 (no source-level variable)
    addu $s1, $a0, $zero

m2c names the parameters arg0..arg3, so `var = argN;` maps to `$aN`.  This tool reads
that mapping out of retail and out of the draft's own cc1 output, then:

  1. gives every parameter retail keeps in a saved register an explicit
     `register M2C_UNK var_sN __asm__("$sN");` variable (replacing later uses of the
     parameter, which is the source shape m2c would have produced),
  2. pins every variable whose register differs into retail's register,
  3. re-orders the entry copies to retail's sequence,
  4. writes `<name>.pinned.c` and scores it.

Usage: python3 tools/pin_retail.py <draft.c> <func> [--bin civ2] [--opt "-O1 -G8"]
"""
import argparse
import os
import re
import subprocess
import sys

D = "/home/user/civ2_decomp"
ARGS = {"$4": "arg0", "$5": "arg1", "$6": "arg2", "$7": "arg3",
        "$a0": "arg0", "$a1": "arg1", "$a2": "arg2", "$a3": "arg3"}
SREG = {"$16": "$s0", "$17": "$s1", "$18": "$s2", "$19": "$s3", "$20": "$s4",
        "$21": "$s5", "$22": "$s6", "$23": "$s7", "$30": "$s8"}
DECL_TYPES = "M2C_UNK|void|s32|u32|s16|u16|s8|u8"
KEYWORDS = ("return|goto|if|else|while|do|for|switch|case|break|continue|sizeof|"
            "default|register|typedef|struct|union|enum")
DECL_RE = re.compile(rf"^\s*(?:register\s+)?(?!{KEYWORDS}\b)"
                     r"(?:void|M2C_UNK|u?int|u?long|[su]\d+|\w+_t|[A-Za-z_]\w*)"
                     r"[ \t*]+[A-Za-z_]\w*(\[[^\]]*\])?;[ \t]*(?:/\*.*\*/)?$")


def numeric(reg):
    """'$s4' -> '$20' (the spelling the pin attribute uses)."""
    m = re.match(r"\$s(\d)$", reg)
    return f"${16 + int(m.group(1))}" if m else reg


def retail_copies(fn, binary):
    path = f"{D}/asm/us/{binary}/nonmatchings/game/{fn}.s"
    txt = open(path).read()
    body = txt[txt.index("glabel " + fn):]
    out = []
    for line in body.splitlines():
        line = re.sub(r"/\*.*?\*/", "", line).strip()
        m = re.match(r"addu\s+(\$s\d),\s*(\$a\d),\s*\$zero$", line)
        if m:
            out.append((SREG.get(m.group(1), m.group(1)), ARGS.get(m.group(2), m.group(2))))
        elif re.match(r"jal\s", line):
            break
    return out


def draft_copies(path, opt):
    r = subprocess.run(["bash", "/tmp/cc1dump.sh", path, opt],
                       capture_output=True, text=True)
    out = []
    for line in r.stdout.splitlines():
        if "\t" not in line or "DEBUG" in line:
            continue
        line = line.replace("\t", " ").strip()
        m = re.match(r"addu\s+(\$\d+),\s*(\$[4-7]),\s*\$zero$", line)
        if m:
            out.append((SREG.get(m.group(1), m.group(1)), ARGS.get(m.group(2), m.group(2))))
            continue
        m = re.match(r"addu\s+(\$\d+),\s*(\$[4-7]),\s*\$zero$", line)
        if re.match(r"jal\s+\w+$", line):
            break
    return out


def find_body_span(src, fn):
    """(start of first statement after '{', end of function)."""
    m = re.search(rf"(?m)^[A-Za-z_][A-Za-z0-9_* \t]*\b{fn}\s*\([^)]*\)\s*\{{", src)
    if not m:
        raise SystemExit(f"no definition of {fn}")
    open_brace = src.index("{", m.start())
    end = src.rindex("}")
    return open_brace, end


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("draft")
    ap.add_argument("func")
    ap.add_argument("--bin", default="civ2")
    ap.add_argument("--opt", default="-O1 -G8")
    a = ap.parse_args()
    src = open(a.draft).read()
    ret = retail_copies(a.func, a.bin)
    copies = draft_copies(a.draft, a.opt)
    if not ret:
        print("retail performs no saved-register copies; nothing to pin")
        return 1
    print("retail copies :", ret)
    print("draft  copies :", copies)

    var_of_arg = {}
    for m in re.finditer(r"(?m)^\s*(\w+)\s*=\s*(arg[0-3])\s*;", src):
        var_of_arg.setdefault(m.group(2), m.group(1))
    reg_of_var = {}
    for reg, arg in copies:
        if arg in var_of_arg:
            reg_of_var.setdefault(var_of_arg[arg], reg)
    print("draft var->arg:", var_of_arg, "var->reg:", reg_of_var)

    ob, end = find_body_span(src, a.func)
    head, body = src[:ob + 1], src[ob + 1:]

    # 1. parameters retail keeps in a saved register but the draft uses directly
    added = []
    for reg, arg in ret:
        if arg in var_of_arg:
            continue
        if arg not in {a2 for _r, a2 in copies}:
            continue
        v = "var_" + reg[1:]
        body = f"\n    register M2C_UNK {v} __asm__(\"{numeric(reg)}\");" + body
        var_of_arg[arg] = v
        added.append((v, arg))
    # insert the copies in retail's order at the top of the body
    order = [var_of_arg[arg] for _reg, arg in ret if arg in var_of_arg]
    copy_lines = "\n".join(
        f"    {var_of_arg[arg]} = {arg};" for _reg, arg in ret
        if arg in var_of_arg and arg in {a2 for _r, a2 in copies} | {a2 for _v, a2 in added})
    for v, arg in added:
        body = re.sub(rf"\b{re.escape(arg)}\b(?=\s*[,;)])", v, body)
    body = "\n" + body

    # 2. pin the variables whose register differs
    pinned = 0
    for reg, arg in ret:
        v = var_of_arg.get(arg)
        if not v:
            continue
        if reg_of_var.get(v) == reg:
            continue
        n = reg[2:]
        m = re.search(rf"(?m)^([ \t]*)((?:{DECL_TYPES})[ \t*]+){re.escape(v)};\s*$", body)
        if not m:
            print(f"  ! declaration of {v} not found")
            continue
        body = (body[:m.start()] +
                f"{m.group(1)}register {m.group(2)}{v} __asm__(\"{numeric(reg)}\");" + body[m.end():])
        pinned += 1
    # Declarations first (C89), then the argument copies in retail's order, then the
    # original statements -- dropping whatever copies the draft already had.
    decls, stmts = [], []
    copy_re = re.compile(r"^\s*\w+\s*=\s*arg[0-3]\s*;\s*$")
    for l in body.splitlines():
        if DECL_RE.match(l) or re.match(r"^\s*register\s", l):
            decls.append(l)
        elif copy_re.match(l) or not l.strip():
            continue
        else:
            stmts.append(l)
    body = "\n".join(["", *decls, *copy_lines.splitlines(), "", *stmts]) + "\n"
    out = head + body
    dst = re.sub(r"\.c$", ".pinned.c", a.draft)
    open(dst, "w").write(out)
    print(f"pinned {pinned} variable(s), added {len(added)} parameter copy/copies")
    r = subprocess.run([sys.executable, f"{D}/tools/try_match.py", dst, a.func,
                        "--bin", a.bin, "--opt", a.opt],
                       capture_output=True, text=True, cwd=D)
    print((r.stdout.strip().splitlines() or [r.stderr[:300]])[0])
    print("pinned draft:", dst)
    return 0


if __name__ == "__main__":
    sys.exit(main())
