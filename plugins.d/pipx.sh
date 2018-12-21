#!/usr/bin/env bash
if which pipx >/dev/null 2>/dev/null; then
    echo "🐍 Update pipx"
    pipx upgrade-all
fi
