#!/usr/bin/env bash
set -Eeuo pipefail

if command -v poetry >/dev/null 2>/dev/null; then
    echo "🐍 Update poetry"
    poetry self:update
fi
