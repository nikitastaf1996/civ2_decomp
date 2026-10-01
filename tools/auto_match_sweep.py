import sys, time, glob, subprocess, tempfile, os, re, pickle, struct
from multiprocessing import Pool
from elftools.elf.elffile import ELFFile

D = "/home/user/civ2_decomp"

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

def compile_one(args):
    binary, name, c_code, opt = args
    cpp_in = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n' + c_code
    r = subprocess.run(
        f"mipsel-linux-gnu-cpp -P -undef -nostdinc -I{D}/include -D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL -DVERSION_US -DSKIP_ASM - | "
        f"{D}/bin/gcc-2.7.2-psx/cc1 -quiet {opt} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -o - -",
        input=cpp_in, shell=True, capture_output=True, text=True
    )
    if r.returncode != 0:
        return (name, None)
    s = r.stdout
    s = re.sub(r"^(gcc2_compiled\.:|__gnu_compiled_c:|\s*\.file\s+.*)$", "", s, flags=re.M)
    asm_path = f"{D}/asm/us/{binary}/nonmatchings/game/{name}.s"
    asm_txt = open(asm_path).read() if os.path.exists(asm_path) else ""
    fn_gprel = sorted(set(re.findall(r"%gp_rel\((\w+)\)", asm_txt)))
    s = re.sub(r"^\s*\.extern\s+\w+,\s*\d+\s*$", "", s, flags=re.M)
    s = f"# MASPSX_GPREL: {' '.join(fn_gprel)}\n" + s
    s = re.sub(r"\$L([C]?\d+)", rf"$L_{name}_\1", s)
    return (name, s)

for binary, exe_name, opts_to_test in [
    ("slus", "SLUS_007.92", ["-O1 -G8", "-O2 -G8"]),
    ("civ2", "CIV2.EXE", ["-O1 -G8", "-O2 -G8"]),
]:
    m2c_res = pickle.load(open(f"/tmp/m2c_cache_{binary}.pkl", "rb"))
    files = sorted(glob.glob(f"{D}/asm/us/{binary}/nonmatchings/game/func_*.s"))
    valid_m2c = [(n, f, enhance_c(binary, n, f, c)) for (n, f, c) in m2c_res if c and f" {n}(" in c]

    ob = open(f"{D}/disks/us/{exe_name}", "rb").read()[0x800:]
    ovram = 0x80010000
    symaddr = {}
    for l in open(f"{D}/build/us/{exe_name}.map"):
        m = re.match(r"\s+0x([0-9a-f]{8})\s+([A-Za-z_]\w*)\s*$", l)
        if m:
            symaddr.setdefault(m.group(2), int(m.group(1), 16))

    def addr_of(n):
        m = re.match(r"(?:D|func|jtbl)_([0-9A-F]{8})$", n)
        return int(m.group(1), 16) if m else symaddr.get(n)

    all_matched = {}
    c_map = {n: c for (n, f, c) in valid_m2c}
    for opt in opts_to_test:
        with Pool(2) as p:
            comp_res = p.map(compile_one, [(binary, n, c, opt) for (n, f, c) in valid_m2c])
        ok_s = [s for (n, s) in comp_res if s]
        w = tempfile.mktemp(prefix=f"{binary}_batch_")
        open(w + ".s", "w").write("\n".join(ok_s))
        r = subprocess.run(
            f"python3 {D}/external/maspsx/maspsx.py --aspsx-version=2.56 --expand-div -G8 < {w}.s > {w}.ms.s && "
            f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {w}.o {w}.ms.s",
            shell=True, capture_output=True, text=True
        )
        e = ELFFile(open(w + ".o", "rb"))
        text = e.get_section_by_name(".text").data()
        rel = {}
        rs = e.get_section_by_name(".rel.text")
        if rs:
            rel = {x["r_offset"]: x for x in rs.iter_relocations()}
        symtab = e.get_section_by_name(".symtab")
        syms = sorted([(s["st_value"], s.name) for s in symtab.iter_symbols() if s["st_info"]["type"] == "STT_FUNC"])

        def reloc_bad(o, word, line):
            r = rel[o]
            t = r["r_info_type"]
            n = symtab.get_symbol(r["r_info_sym"]).name
            want_sym = re.findall(r"%(?:lo|gp_rel)\((\w+)\)", line) if t in (6, 7) else re.findall(r"jal\s+(\w+)", line) if t == 4 else []
            if not n or not want_sym:
                return False
            a, b = addr_of(n), addr_of(want_sym[0])
            if a is None or b is None:
                return n != want_sym[0]
            if t == 6:
                a += (word & 0xffff) - ((word & 0x8000) << 1)
            return a != b

        matches = []
        near1 = 0
        for i, (off, name) in enumerate(syms):
            asm = f"{D}/asm/us/{binary}/nonmatchings/game/{name}.s"
            if not os.path.exists(asm):
                continue
            t = open(asm).read()
            size = int(re.search(r"nonmatching " + name + r", 0x([0-9A-F]+)", t).group(1), 16)
            addr = int(re.search(r"glabel " + name + r"\n\s+/\* [0-9A-F]+ ([0-9A-F]{8}) ", t).group(1), 16)
            end = syms[i + 1][0] if i + 1 < len(syms) else len(text)
            body = t[t.index("glabel " + name + "\n"):]
            body = body[:body.index("endlabel " + name + "\n")] if "endlabel " + name + "\n" in body else body
            tl = [re.sub(r"\s+", " ", re.sub(r".*\*/\s+", "", l)).strip() for l in body.splitlines() if re.match(r"\s+/\*", l)]
            if end - off != size:
                continue
            nd = 0
            for k in range(size // 4):
                o = off + 4 * k
                a = struct.unpack("<I", text[o:o+4])[0]
                b = struct.unpack("<I", ob[addr - ovram + 4 * k:][:4])[0]
                rbad = False
                if o in rel:
                    rbad = k < len(tl) and reloc_bad(o, a, tl[k])
                    mk = 0xfc000000 if (a >> 26) in (2, 3) else 0xffff0000
                    a &= mk
                    b &= mk
                if a != b or rbad:
                    nd += 1
            if nd == 0:
                matches.append(name)
                all_matched.setdefault(name, (opt, c_map[name]))
            elif nd == 1:
                near1 += 1
        print(f"  [{opt}]: {len(ok_s)}/{len(valid_m2c)} compiled -> {len(matches)} EXACT 100% MATCHES! (+ {near1} w/ 1 diff)")
    pickle.dump(all_matched, open(f"/tmp/matched_{binary}.pkl", "wb"))
    print(f"  ==> Total unique 100% matched {exe_name} functions: {len(all_matched)}/{len(files)} ({100*len(all_matched)/len(files):.1f}%)\n")
