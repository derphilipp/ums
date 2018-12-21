#!/usr/bin/env bash

if which mr >/dev/null 2>/dev/null; then
    echo "Update mr"
    mr -m -q -s --directory $HOME co && \
    mr -m -q -s --directory $HOME update
fi
