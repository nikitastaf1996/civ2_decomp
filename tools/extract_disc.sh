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
if command -v 7z >/dev/null; then
    ( cd "$OUT" && 7z e -y "$iso" "SLUS_007.92" "CIV2.EXE" >/dev/null )
elif command -v isoinfo >/dev/null; then
    ( cd "$OUT" && isoinfo -i "$iso" -x "/SLUS_007.92;1" > SLUS_007.92 \
                && isoinfo -i "$iso" -x "/CIV2.EXE;1" > CIV2.EXE )
else
    echo "    !! need 7z (p7zip-full) or isoinfo (genisoimage)" >&2
    exit 2
fi
rm -f "$iso"

echo "==> verifying against config/us/*.sha1"
( cd "$ROOT" && sha1sum -c config/us/SLUS_007.92.sha1 config/us/CIV2.EXE.sha1 )
