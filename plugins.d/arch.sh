#!/usr/bin/env bash
set -Eeuo pipefail

if command -v yay >/dev/null 2>/dev/null; then
    yay -Syu --devel --noconfirm
elif command -v yaourt >/dev/null 2>/dev/null; then
    echo "🐧 update yaourt"
    yaourt -Syu --devel --aur --noconfirm
elif command -v pacman >/dev/null 2>/dev/null; then
    echo "🐧 update pacman"
    sudo pacman -Sqyu --noconfirm
fi
