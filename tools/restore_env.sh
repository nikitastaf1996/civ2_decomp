#!/usr/bin/env bash
# Restore a complete working build environment for this repository.
#
# Everything tracked by git lives in the repository, but the build needs four
# things that are deliberately not committed (they are large, licensed, or
# machine-specific):
#
#   1. the GCC 2.7.2 PSX cross compiler  -> bin/gcc-2.7.2-psx/cc1
#   2. MIPS binutils + cpp, p7zip        -> system packages
#   3. Python packages used by splat/m2c -> pip
#   4. the two retail PS-X executables   -> disks/us/{SLUS_007.92,CIV2.EXE}
#
# The disc image is *not* stored in the repository.  Point ROM= at a cue/bin of
# the retail disc, or set ROM_URL to the Google Drive zip that contains one.
#
# Usage:
#   tools/restore_env.sh [/path/to/disc.cue]
# Environment:
#   ROM=/path/to/disc.cue     disc image to extract the executables from
#   ROM_URL=<drive-url>       zip containing "Civilization II (USA) (Track 1).bin"
#                               (defaults to the link this project was built from)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ROM="${1:-${ROM:-}}"
ROM_URL="${ROM_URL:-https://drive.google.com/uc?export=download&id=1RxmKZZ8i3mLjwSw9dpv6BOmtEa0jg9ML}"
# Keep the disc image *outside* the repository tree: it is ~460 MB, which dwarfs
# the sources and (in a sandbox whose workspace is snapshotted) can push the
# snapshot over its size budget.  Only the two extracted 1.6 MB executables
# actually need to live next to the build.
WORK="${WORK:-/var/tmp/rom}"

echo "==> toolchain (cc1, binutils, python packages, linker scripts)"
"$ROOT/tools/setup_toolchain.sh"

if [ -f "$ROOT/disks/us/SLUS_007.92" ] && [ -f "$ROOT/disks/us/CIV2.EXE" ] \
   && ( cd "$ROOT" && sha1sum -c config/us/SLUS_007.92.sha1 config/us/CIV2.EXE.sha1 >/dev/null 2>&1 ); then
    echo "==> retail executables already present and verified"
else
    if [ -z "$ROM" ]; then
        # Download the distribution zip and pull the data track out of it.  Google
        # Drive answers large files with an HTML interposition page first, which
        # carries a uuid/confirm token that has to be replayed.
        mkdir -p "$WORK"
        track1="$WORK/Civilization II (USA) (Track 1).bin"
        if [ ! -f "$track1" ]; then
            echo "==> downloading disc image from Google Drive"
            page="$(curl -sL -c "$WORK/.cookies" "$ROM_URL")"
            download_url="$(printf '%s' "$page" | python3 -c '
import re, sys
html = sys.stdin.read()
form = re.search(r"<form[^>]*action=\"([^\"]+)\"(.*?)</form>", html, re.S)
if form:
    fields = dict(re.findall(r"<input[^>]*name=\"([^\"]+)\"[^>]*value=\"([^\"]*)\"", form.group(2)))
    query = "&".join(f"{k}={v}" for k, v in fields.items())
    print(f"{form.group(1)}?{query}")
else:
    print("")
')"
            if [ -z "$download_url" ]; then
                echo "    !! could not parse the Google Drive interposition page." >&2
                echo "       Download the archive manually and re-run with ROM=<disc.cue>." >&2
                exit 2
            fi
            curl -L -b "$WORK/.cookies" -o "$WORK/disc.zip" "$download_url"
            rm -f "$WORK/.cookies"
            unzip -o -q "$WORK/disc.zip" "Civilization II (USA) (Track 1).bin" "Civilization II (USA).cue" -d "$WORK"
            rm -f "$WORK/disc.zip"
        fi
        ROM="$WORK/Civilization II (USA).cue"
    fi
    echo "==> extracting retail executables from $ROM"
    "$ROOT/tools/extract_disc.sh" "$ROM"

    # setup_toolchain.sh could not generate the linker scripts on a fresh machine
    # (splat needs these binaries, which only exist now), so generate them here.
    echo "==> Linker scripts (splat)"
    for y in slus civ2; do
        ( cd "$ROOT" && python3 -m splat split "config/us/$y.yaml" >/dev/null )
    done
    echo "    generated build/us/generated/{slus,civ2}.ld"
fi

echo
echo "==> restoring the splice state (src/*/game.c are already tracked, build is reproducible)"
( cd "$ROOT" && python3 tools/splice_matched.py )

echo
echo "==> ready.  Build with:  make -j\$(nproc) && make compare"
