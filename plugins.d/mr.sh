#!/usr/bin/env bash
set -Eeuo pipefail

if command -v mr >/dev/null 2>/dev/null; then
    echo "📦 Update mr"
    mr -m -q -s --directory "$HOME" co && \
    mr -m -q -s --directory "$HOME" update
fi
