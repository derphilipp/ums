#!/usr/bin/env bash
set -Eeuo pipefail

if command -v cargo >/dev/null 2>/dev/null; then
    if command -v cargo-install-update >/dev/null 2>/dev/null; then
        echo "⚙️  Update cargo packages"
        cargo-install-update install-update -a
    else
        echo "⚙️  You can install cargo-update:"
        echo "cargo install cargo-update"
    fi
fi
