#!/usr/bin/env bash
set -Eeuo pipefail

if which snap >/dev/null 2>/dev/null; then
    echo "🐧 Updating snap"
    sudo snap refresh
fi
