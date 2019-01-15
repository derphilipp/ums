#!/usr/bin/env bash
set -Eeuo pipefail

if command -v brew 2>/dev/null >/dev/null; then
    if command -v brew 2>/dev/null >/dev/null; then # Only osx for now
        echo "🍺  Homebrew"
        brew update
        brew upgrade
        brew cleanup
        # echo ""
        # echo "👨‍⚕  ️The Doc is checking that everything is ok."
        # brew doctor
        brew missing
        echo ""
    fi
fi
