#!/usr/bin/env bash
# Extract the two retail PS-X executables from a Civilization II (USA) disc image.
#
# The disc is a mixed-mode PS1 disc: track 1 is MODE2/2352 and holds the ISO 9660
# filesystem, track 2 is CD-DA audio.  This script converts track 1's raw 2352-byte
# sectors to 2048-byte user-data sectors (PSX MODE2/Form1 keeps the payload at
# offset 24) and pulls SLUS_007.92 and CIV2.EXE out of the ISO.
#
# Usage:  tools/extract_disc.sh "/path/to/Civilization II (USA).cue"
#         tools/extract_disc.sh /path/to/"Civilization II (USA) (Track 1).bin"
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/disks/us"
mkdir -p "$OUT"

input="${1:?usage: extract_disc.sh <disc.cue|track1.bin>}"
case "$input" in
    *.cue)
        dir="$(dirname "$input")"
        base="$(basename "$input" .cue)"
        track="$(sed -n 's/^FILE "\(.*\)" BINARY.*/\1/p' "$input" | head -1)"
        bin="$dir/$track"
        ;;
    *.bin) bin="$input" ;;
    *) echo "unsupported input: $input" >&2; exit 2 ;;
esac

[ -f "$bin" ] || { echo "track 1 image not found: $bin" >&2; exit 2; }

iso="$(mktemp -u --suffix=.iso)"
echo "==> converting $bin -> $iso (2352 -> 2048 byte sectors)"
python3 - "$bin" "$iso" <<'PY'
import os, sys
src, dst = sys.argv[1], sys.argv[2]
total = os.path.getsize(src) // 2352
with open(src, "rb") as f, open(dst, "wb") as o:
    for sector in range(total):
        f.seek(sector * 2352 + 24)
        o.write(f.read(2048))
print(f"    {total} sectors")
PY

echo "==> extracting SLUS_007.92 and CIV2.EXE"
rm -f "$OUT/SLUS_007.92" "$OUT/CIV2.EXE"
if command -v 7z >/dev/null; then
    # 7z refuses this disc: the PVD's VolumeSpaceSize covers the whole CD
    # (215,324 sectors) while the track holds the data track's 205,798, so it
    # reports "Unexpected end of archive" and extracts nothing.  Its exit status
    # is checked by the caller-side verification below, not here.
    ( cd "$OUT" && 7z e -y "$iso" "SLUS_007.92" "CIV2.EXE" >/dev/null 2>&1 ) || true
fi

if [ ! -s "$OUT/SLUS_007.92" ] || [ ! -s "$OUT/CIV2.EXE" ]; then
    echo "    (7z could not read the image; walking the ISO 9660 directory tree directly)"
    python3 - "$iso" "$OUT" <<'PY'
import os, struct, sys

iso, out = sys.argv[1], sys.argv[2]
f = open(iso, "rb")

def sector(n, count=1):
    f.seek(n * 2048)
    return f.read(2048 * count)

def rec_u32(rec, off):
    return struct.unpack("<I", rec[off:off + 4])[0]

def find(extent, size, want, path="/"):
    """Depth-first walk of the ISO 9660 directory records."""
    data = sector(extent, (size + 2047) // 2048)
    off = 0
    while off < size:
        rlen = data[off]
        if rlen == 0:                      # padding to the next sector
            off = (off // 2048 + 1) * 2048
            continue
        rec = data[off:off + rlen]
        name = rec[33:33 + rec[32]].decode("latin1").split(";")[0]
        child_ext, child_size, flags = rec_u32(rec, 2), rec_u32(rec, 10), rec[25]
        if name not in (".", ".."):
            full = path + name
            if flags & 2:
                if find(child_ext, child_size, want, full + "/"):
                    return True
            elif full.lstrip("/").upper() in want:
                f.seek(child_ext * 2048)
                blob = f.read(child_size)
                open(os.path.join(out, full.lstrip("/")), "wb").write(blob)
                print(f"    {full} -> {len(blob)} bytes")
                want.discard(full.lstrip("/").upper())
                if not want:
                    return True
        off += rlen
    return False

pvd = sector(16)
if pvd[0] != 1:
    sys.exit("no primary volume descriptor at sector 16")
root = pvd[156:156 + 34]
if not find(rec_u32(root, 2), rec_u32(root, 10), {"SLUS_007.92", "CIV2.EXE"}):
    sys.exit("SLUS_007.92 / CIV2.EXE not found in the image")
PY
fi
rm -f "$iso"

echo "==> verifying against config/us/*.sha1"
( cd "$ROOT" && sha1sum -c config/us/SLUS_007.92.sha1 config/us/CIV2.EXE.sha1 )
