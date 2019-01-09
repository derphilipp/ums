#!/usr/bin/env bash
set -Eeuo pipefail

if command -v mr >/dev/null 2>/dev/null; then
    echo "📛 Update pihole"
    pihole -up
fi
