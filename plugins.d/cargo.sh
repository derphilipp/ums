#!/usr/bin/env bash

if which cargo >/dev/null 2>/dev/null; then
    if which cargo-install-update >/dev/null 2>/dev/null; then
        echo "⚙️  Update cargo packages"
        cargo-install-update install-update -a
    else
        echo "⚙️  You can install cargo-update:"
        echo "cargo install cargo-update"
    fi
fi
