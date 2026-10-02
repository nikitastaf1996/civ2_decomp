#!/usr/bin/env bash
# Fetch the toolchain that this repository deliberately does not vendor.
#
#   * GCC 2.7.2 for PSX (`cc1`)  - decompals/old-gcc release 0.17
#   * MIPS binutils + preprocessor - Debian's binutils/cpp-mipsel-linux-gnu
#   * Python packages required by splat and the pipeline tools
#
# Usage:  tools/setup_toolchain.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GCC_VERSION="${GCC_VERSION:-0.17}"
GCC_URL="https://github.com/decompals/old-gcc/releases/download/${GCC_VERSION}/gcc-2.7.2-psx.tar.gz"

echo "==> GCC 2.7.2 PSX cc1"
if [ -x "$ROOT/bin/gcc-2.7.2-psx/cc1" ]; then
    echo "    already present: $ROOT/bin/gcc-2.7.2-psx/cc1"
else
    mkdir -p "$ROOT/bin/gcc-2.7.2-psx"
    tmp="$(mktemp -d)"
    curl -fsSL -o "$tmp/gcc-2.7.2-psx.tar.gz" "$GCC_URL"
    tar xzf "$tmp/gcc-2.7.2-psx.tar.gz" -C "$ROOT/bin/gcc-2.7.2-psx"
    rm -rf "$tmp"
    echo "    installed: $ROOT/bin/gcc-2.7.2-psx/cc1"
fi

echo "==> MIPS binutils + cpp"
# p7zip-full is what tools/extract_disc.sh uses to pull the two PS-X EXEs out of
# the converted ISO (isoinfo from genisoimage works as a fallback).
if ! command -v mipsel-linux-gnu-as >/dev/null || ! command -v mipsel-linux-gnu-cpp >/dev/null \
   || ! command -v 7z >/dev/null; then
    if command -v apt-get >/dev/null; then
        sudo apt-get install -y binutils-mipsel-linux-gnu cpp-mipsel-linux-gnu p7zip-full
    else
        echo "    !! install binutils-mipsel-linux-gnu, cpp-mipsel-linux-gnu and p7zip-full manually" >&2
    fi
else
    echo "    already present"
fi

echo "==> Python packages"
python3 -m pip install --quiet --disable-pip-version-check \
    splat64 spimdisasm n64img pygfxd crunch64 pyelftools pyyaml


echo "==> Linker scripts (splat)"
# build/us/generated/{slus,civ2}.ld come from splat; `make` cannot generate them itself
# and fails with "No rule to make target ..." on a fresh checkout.
for y in slus civ2; do
    python3 -m splat split "config/us/$y.yaml" >/dev/null
done
echo "    generated build/us/generated/{slus,civ2}.ld"

echo "==> done.  Next: tools/extract_disc.sh <disc.cue>  &&  make -j\$(nproc) && make compare"
