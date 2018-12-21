#!/usr/bin/env bash
if which nvim >/dev/null 2>/dev/null; then
    echo "update nvim plugins"
    nvim +silent +'call dein#update()' +qall
elif which vim >/dev/null 2>/dev/null; then
    echo "update vim plugins"
    vim +'call dein#update()' +qall
fi
