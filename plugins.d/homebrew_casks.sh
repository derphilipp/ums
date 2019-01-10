#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$OSTYPE" == "darwin"* ]]; then
    if command -v brew 2>/dev/null >/dev/null; then
        echo "🍺  Homebrew casks"
        brew update
        brew cask outdated | cut -f 1 -d " " |grep -v 'reaper' | xargs brew cask reinstall
        echo ""
    fi
fi
