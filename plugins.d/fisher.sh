#!/usr/bin/env bash
set -Eeuo pipefail

if command -v fish >/dev/null 2>/dev/null; then
    if fish -c "type -q fisher" ; then
        echo "🐟 update fisher"
        fish -c "fisher self-update"
        fish -c "fisher"
    fi
fi
