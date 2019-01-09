#!/usr/bin/env bash
set -Eeuo pipefail

if command -v pipsi >/dev/null 2>/dev/null; then
    echo "🐍 Update pipsi"
    pipsi list | grep 'Package ' | cut -d\" -f2 | xargs -n1 pipsi upgrade | grep -v "Requirement not upgraded as not directly required" | grep -v "Requirement already up-to-date"
fi
