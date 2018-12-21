#!/usr/bin/env bash

if [ -e "$HOME/.fzf/install" ]; then
    echo "⌨️ Update fzf"
    $HOME/.fzf/install --bin
fi
