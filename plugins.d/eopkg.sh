#!/usr/bin/env bash
set -Eeuo pipefail

if command -v eopkg >/dev/null 2>/dev/null; then
    echo "🐧 update eopkg"
    sudo eopkg upgrade
fi
