#!/usr/bin/env bash
if which rustup 2>/dev/null; then
    echo "🦀 Upgrading rustup itself"
    rustup self update
    echo "🦀 Upgrading rust toolchains"
    rustup update
    echo ""
fi
