#!/usr/bin/env bash
set -Eeuo pipefail

if command -v brew 2>/dev/null >/dev/null; then
    if command -v brew 2>/dev/null >/dev/null; then # Only osx for now
        echo "🍺  Homebrew"
        brew update
        brew upgrade
        # echo ""
        # echo "👨‍⚕  ️The Doc is checking that everything is ok."
        # brew doctor
        brew missing
        echo ""

        if [[ ${1-default} == "cleanup" ]]; then
            echo "🌬   Cleaning brewery"
            brew cleanup -s
        fi
    fi
fi
