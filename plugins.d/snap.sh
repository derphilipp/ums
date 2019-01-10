#!/usr/bin/env bash
set -Eeuo pipefail

if command -v snap >/dev/null 2>/dev/null; then
    echo "🐧 Updating snap"
    sudo snap refresh
fi
