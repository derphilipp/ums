#!/usr/bin/env bash
set -Eeuo pipefail

if command -v poetry >/dev/null 2>/dev/null; then
    if command -v yay >/dev/null 2>/dev/null; then
        echo "🐍  No update poetry standalone, do it with yay"
    elif command -v yaourt >/dev/null 2>/dev/null; then
        echo "🐍  No update poetry standalone, do it with yaourt"
    else
        echo "🐍  Update poetry standalone"
        poetry self:update
    fi
fi
