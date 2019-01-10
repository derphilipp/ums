#!/usr/bin/env bash
set -Eeuo pipefail

if [ -e "$HOME/.fzf/install" ]; then
    echo "⌨️  Update fzf"
    "$HOME/.fzf/install" --bin
fi
