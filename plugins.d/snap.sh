#!/usr/bin/env bash
if which snap >/dev/null 2>/dev/null; then
    echo "🐧 Updating snap"
    sudo snap refresh
fi
