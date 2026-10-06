import sys, time, glob, subprocess, tempfile, os, re, pickle, struct
from multiprocessing import Pool
from elftools.elf.elffile import ELFFile

D = "/home/user/civ2_decomp"

from m2c_postprocess import OP_TO_TYPE, enhance_c, replace_deref_add
from draft_repair import repair as repair_draft

CPP_FLAGS = ("-P -undef -nostdinc -I{D}/include -D_LANGUAGE_C -DLANGUAGE_C -D__GNUC__=2 "
             "-Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D_MIPSEL "
             "-DVERSION_US -DSKIP_ASM -").format(D=D)


def _cc1(cpp_in, opt):
    return subprocess.run(
        f"mipsel-linux-gnu-cpp {CPP_FLAGS} | "
        f"{D}/bin/gcc-2.7.2-psx/cc1 -quiet {opt} -mips1 -mcpu=3000 -mgas -msoft-float -fgnu-linker -o - -",
        input=cpp_in, shell=True, capture_output=True, text=True
    )


def compile_one(args):
    binary, name, c_code, opt = args
    cpp_in = '#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n' + c_code
    r = _cc1(cpp_in, opt)
    if r.returncode != 0:
        # m2c drafts routinely fail C89 for reasons that have nothing to do with the
        # function (a callee prototype the call sites do not match, a symbol m2c never
        # declared, an integer local it dereferences).  Repair and retry before giving
        # up: 85 of the 184 undecodable-in-practice drafts become scoreable this way,
        # and the repair is only ever accepted if the bytes still match exactly.
        fixed = repair_draft(c_code, binary, name)
        if fixed != c_code:
            r = _cc1('#include "common.h"\n#include "m2c_macros.h"\nvoid *memcpy();\n' + fixed, opt)
            if r.returncode == 0:
                c_code = fixed
    if r.returncode != 0:
        return (name, None, c_code)
    s = r.stdout
    s = re.sub(r"^(gcc2_compiled\.:|__gnu_compiled_c:|\s*\.file\s+.*)$", "", s, flags=re.M)
    asm_path = f"{D}/asm/us/{binary}/nonmatchings/game/{name}.s"
    asm_txt = open(asm_path).read() if os.path.exists(asm_path) else ""
    fn_gprel = sorted(set(re.findall(r"%gp_rel\((\w+)\)", asm_txt)))
    s = re.sub(r"^\s*\.extern\s+\w+,\s*\d+\s*$", "", s, flags=re.M)
    s = f"# MASPSX_GPREL: {' '.join(fn_gprel)}\n" + s
    s = re.sub(r"\$L([C]?\d+)", rf"$L_{name}_\1", s)
    return (name, s, c_code)



def sweep(binary, exe_name, opts_to_test, only=None, out_path=None, near_limit=3,
          cache=None, pre_enhanced=False, near_out=None, size_tolerance=0,
          size_near_out=None):
    opts_to_test = list(opts_to_test)
    m2c_res = pickle.load(open(cache or f"/tmp/m2c_cache_{binary}.pkl", "rb"))
    files = sorted(glob.glob(f"{D}/asm/us/{binary}/nonmatchings/game/func_*.s"))
    # `pre_enhanced` caches (tools/m2c_variants.py) already hold the enhanced draft.
    valid_m2c = [(n, f, c if pre_enhanced else enhance_c(binary, n, f, c))
                 for (n, f, c) in m2c_res
                 if c and re.search(r"\b" + re.escape(n) + r"\s*\(", c)]
    if only is not None:
        valid_m2c = [t for t in valid_m2c if t[0] in only]
        print(f"  [filter] testing {len(valid_m2c)} of {len(m2c_res)} cached functions")

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
    near_misses = {}
    size_misses = {}
    c_map = {n: c for (n, f, c) in valid_m2c}
    repaired = {}
    for opt in opts_to_test:
        with Pool(2) as p:
            comp_res = p.map(compile_one, [(binary, n, c, opt) for (n, f, c) in valid_m2c])
        # A draft the repair step had to fix is scored from its repaired text, so a
        # match that comes out of it can be spliced in that (compilable) form.
        for (n, s, c) in comp_res:
            if s and c != c_map[n]:
                repaired[n] = c
        ok_s = [s for (n, s, _c) in comp_res if s]
        w = tempfile.mktemp(prefix=f"{binary}_batch_")
        open(w + ".s", "w").write("\n".join(ok_s))
        r = subprocess.run(
            f"python3 {D}/external/maspsx/maspsx.py --aspsx-version=2.56 --expand-div -G8 < {w}.s > {w}.ms.s && "
            f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {w}.o {w}.ms.s",
            shell=True, capture_output=True, text=True
        )
        if not os.path.exists(w + ".o"):
            # A single unassemblable draft (m2c output that still contains unknown
            # constructs) would otherwise abort the whole sweep.  Drop the offending
            # functions and retry the batch without them.
            bad = set(re.findall(rf"{w}\.ms\.s:(\d+):", r.stderr))
            if bad:
                all_lines = open(w + ".s").read().split("\n")
                print(f"  [{opt}] {len(r.stderr.splitlines())} assembler errors; "
                      f"dropping {len(bad)} drafts and retrying", flush=True)
            else:
                print(f"  [{opt}] assembler failed: {r.stderr.strip().splitlines()[-1] if r.stderr else '?'}",
                      flush=True)
                r.stderr = ""
            # Retry per-function so one bad draft cannot take out the batch.
            survivors = []
            for (n, s, _c) in comp_res:
                if not s:
                    continue
                single = tempfile.mktemp(prefix=f"{binary}_one_")
                open(single + ".s", "w").write(s)
                rr = subprocess.run(
                    f"python3 {D}/external/maspsx/maspsx.py --aspsx-version=2.56 --expand-div -G8 < {single}.s > {single}.ms.s && "
                    f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {single}.o {single}.ms.s",
                    shell=True, capture_output=True, text=True
                )
                if os.path.exists(single + ".o"):
                    survivors.append((n, s, _c))
            if not survivors:
                print(f"  [{opt}] no draft assembled; skipping this optimisation level", flush=True)
                continue
            comp_res = survivors
            ok_s = [s for (n, s, _c) in comp_res]
            open(w + ".s", "w").write("\n".join(ok_s))
            r = subprocess.run(
                f"python3 {D}/external/maspsx/maspsx.py --aspsx-version=2.56 --expand-div -G8 < {w}.s > {w}.ms.s && "
                f"mipsel-linux-gnu-as -EL -march=r3000 -no-pad-sections -O1 -G0 -I{D} -I{D}/include -o {w}.o {w}.ms.s",
                shell=True, capture_output=True, text=True
            )
            if not os.path.exists(w + ".o"):
                print(f"  [{opt}] batch still fails to assemble; skipping", flush=True)
                continue
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
        size_near = {}
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
            cand_size = end - off
            # A draft whose compiled length differs from the retail function cannot be an
            # exact match, but it is still a *near* miss: m2c routinely mis-sizes a varargs
            # stub, a stack object (idiom 0d) or a foldable tail.  Scoring those drafts
            # instead of skipping them is what surfaces them in the triage queue.
            if cand_size != size and abs(cand_size - size) > size_tolerance:
                continue
            mismatched = cand_size != size
            nd = 0
            for k in range(max(cand_size, size) // 4):
                o = off + 4 * k
                a = struct.unpack("<I", text[o:o+4])[0] if o + 4 <= len(text) else None
                b = ob[addr - ovram + 4 * k:][:4]
                b = struct.unpack("<I", b)[0] if len(b) == 4 else None
                rbad = False
                if o in rel:
                    rbad = k < len(tl) and reloc_bad(o, a, tl[k])
                    mk = 0xfc000000 if (a >> 26) in (2, 3) else 0xffff0000
                    if a is not None:
                        a &= mk
                    if b is not None:
                        b &= mk
                if a != b or rbad:
                    nd += 1
            if mismatched:
                if nd <= near_limit:
                    prev = size_near.get(name)
                    if prev is None or nd < prev[0]:
                        size_near[name] = (nd, opt, cand_size - size)
                continue
            if nd == 0:
                matches.append(name)
                # A function that compiles exactly at one optimisation level can still be
                # a near miss at another; the near-miss list is a triage queue and must
                # not contain functions that are already matched.
                near_misses.pop(name, None)
                all_matched.setdefault(name, (opt, repaired.get(name, c_map[name])))
            elif nd <= near_limit:
                near1 += 1
                if name not in near_misses or nd < near_misses[name][0]:
                    near_misses[name] = (nd, opt)
        size1 = sum(1 for n, rec in size_near.items() if rec[0] <= 1)
        print(f"  [{opt}]: {len(ok_s)}/{len(valid_m2c)} compiled -> {len(matches)} EXACT 100% MATCHES! (+ {near1} w/ 1 diff)"
              + (f"  [{len(size_near)} size-mismatched, {size1} at <=1 diff]" if size_tolerance else ""))
        for n, rec in size_near.items():
            if n not in size_misses or rec[0] < size_misses[n][0]:
                size_misses[n] = rec
    pickle.dump(all_matched, open(out_path or f"/tmp/matched_{binary}.pkl", "wb"))
    # Near-misses (<=3 differing instructions) are the cheapest manual wins; record
    # them with their best optimisation level so a human pass can start there.
    nm_path = near_out or f"/tmp/near_misses_{binary}.txt"
    with open(nm_path, "w") as f:
        for name, (nd, opt) in sorted(near_misses.items(), key=lambda kv: (kv[1][0], kv[0])):
            f.write(f"{nd} {opt} {name}\n")
    print(f"  ==> {len(near_misses)} near-misses (<={near_limit} diffs) written to {nm_path}")
    if size_tolerance:
        sn_path = size_near_out or (nm_path + ".size" if near_out else f"/tmp/size_near_misses_{binary}.txt")
        with open(sn_path, "w") as f:
            for name, (nd, opt, delta) in sorted(size_misses.items(), key=lambda kv: (kv[1][0], kv[0])):
                f.write(f"{nd} {delta:+d} {opt} {name}\n")
        print(f"  ==> {len(size_misses)} size-mismatched near-misses (<={near_limit} diffs, "
              f"+-{size_tolerance} B) written to {sn_path}")
    print(f"  ==> Total unique 100% matched {exe_name} functions: {len(all_matched)}/{len(files)} ({100*len(all_matched)/len(files):.1f}%)\n")
    return all_matched


DEFAULT_OPTS = ["-O1 -G8", "-O2 -G8"]
BINARIES = [("slus", "SLUS_007.92"), ("civ2", "CIV2.EXE")]


def main(argv=None):
    import argparse
    ap = argparse.ArgumentParser(description="Automated m2c -> cc1 -> byte-compare matching sweep.")
    ap.add_argument("--bin", dest="binary", choices=["slus", "civ2"], default=None)
    ap.add_argument("--opts", action="append", default=None,
                    help="cc1 optimisation flags to test (repeatable). Default: -O1 -G8 and -O2 -G8")
    ap.add_argument("--only-file", default=None,
                    help="File with one function name per line; restrict the sweep to those functions.")
    ap.add_argument("--out", default=None, help="Output pickle path (default /tmp/matched_<bin>.pkl)")
    ap.add_argument("--near-out", default=None,
                    help="Where to write the near-miss list (default /tmp/near_misses_<bin>.txt); "
                         "give each sweep variant its own file so they can be compared.")
    ap.add_argument("--cache", default=None,
                    help="Alternate m2c draft cache (e.g. /tmp/m2c_cache_civ2_v2.pkl from "
                         "tools/m2c_variants.py). Default /tmp/m2c_cache_<bin>.pkl")
    ap.add_argument("--enhanced", action="store_true",
                    help="The cache already holds enhanced drafts; do not re-run the m2c "
                         "post-processing over them.")
    ap.add_argument("--near", type=int, default=3,
                    help="Also record near-misses with up to this many differing instructions (default 3). "
                         "Raising it turns the sweep into a triage tool: the recorded list is the cheapest "
                         "place for a manual pass to start.")
    ap.add_argument("--size-tolerance", type=int, default=0, metavar="BYTES",
                    help="Also score drafts whose compiled length differs from the retail function by up "
                         "to this many bytes (default 0: they are skipped outright).  Such a draft can "
                         "never be an exact match, but it is often a one-line fix (a mis-sized varargs "
                         "stub or stack object), so the entries are reported separately instead of being "
                         "lost.")
    ap.add_argument("--size-near-out", default=None,
                    help="Where to write the size-mismatched near-miss list, one "
                         "'<diffs> <bytes-delta> <flags> <name>' per line "
                         "(default: <--near-out>.size, else /tmp/size_near_misses_<bin>.txt).")
    args = ap.parse_args(argv)

    opts = args.opts or DEFAULT_OPTS
    only = None
    if args.only_file:
        only = {l.strip() for l in open(args.only_file) if l.strip()}

    for binary, exe_name in BINARIES:
        if args.binary and binary != args.binary:
            continue
        out = args.out or f"/tmp/matched_{binary}.pkl"
        sweep(binary, exe_name, opts, only=only, out_path=out, near_limit=args.near,
              cache=args.cache, pre_enhanced=args.enhanced, near_out=args.near_out,
              size_tolerance=args.size_tolerance, size_near_out=args.size_near_out)


if __name__ == "__main__":
    main()
