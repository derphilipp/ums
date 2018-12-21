#!/usr/bin/env bash
if which pipx >/dev/null 2>/dev/null; then
    pipx upgrade-all
fi
