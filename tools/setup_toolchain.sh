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
if ! command -v mipsel-linux-gnu-as >/dev/null || ! command -v mipsel-linux-gnu-cpp >/dev/null; then
    if command -v apt-get >/dev/null; then
        sudo apt-get install -y binutils-mipsel-linux-gnu cpp-mipsel-linux-gnu
    else
        echo "    !! install binutils-mipsel-linux-gnu and cpp-mipsel-linux-gnu manually" >&2
    fi
else
    echo "    already present"
fi

echo "==> Python packages"
python3 -m pip install --quiet --disable-pip-version-check \
    splat64 spimdisasm n64img pygfxd crunch64 pyelftools pyyaml

echo "==> done.  Next: tools/extract_disc.sh <disc.cue>  &&  make -j\$(nproc) && make compare"
