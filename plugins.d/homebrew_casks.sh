#!/usr/bin/env bash
if [[ "$OSTYPE" == "darwin"* ]]; then
    if which brew 2>/dev/null; then
        echo "🍺  Homebrew casks"
        brew update
        brew cask outdated | cut -f 1 -d " " |grep -v 'reaper' | xargs brew cask reinstall
        echo ""
    fi
fi
