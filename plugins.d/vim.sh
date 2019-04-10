#!/usr/bin/env bash
set -Eeuo pipefail

if [ -d  ~/.vim/dein/ ]; then
    if command -v nvim >/dev/null 2>/dev/null; then
        echo "📝 update nvim plugins"
        nvim --headless +"call dein#install()" +"call dein#update()" +UpdateRemotePlugins +qall
        echo ""
    elif command -v vim >/dev/null 2>/dev/null; then
        echo "📝 update vim plugins"
        vim --headless +"call dein#install()" +"call dein#update()" +UpdateRemotePlugins +qall
        echo ""
    fi
fi
