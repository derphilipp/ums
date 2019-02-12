#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo ""
else
    if command -v apk >/dev/null 2>/dev/null; then
        echo "🐧 update apk"
        sudo apk update && \
        sudo apk upgrade
    fi
fi
