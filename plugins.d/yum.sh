#!/usr/bin/env bash
set -Eeuo pipefail

if command -v yum >/dev/null 2>/dev/null; then
    echo "🐧 update yum"
    sudo yum update
fi
