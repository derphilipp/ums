#!/usr/bin/env bash
set -Eeuo pipefail

if which rustup 2>/dev/null; then
    echo "🦀 Upgrading rustup itself"
    rustup self update
    echo "🦀 Upgrading rust toolchains"
    rustup update
    echo ""
fi
