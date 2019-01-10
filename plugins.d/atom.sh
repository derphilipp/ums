#!/usr/bin/env bash
set -Eeuo pipefail

if command -v apm-beta 2>/dev/null; then
    echo "⚛️   update atom"
    apm-beta upgrade -c false
fi

if command -v apm 2>/dev/null; then
    echo "⚛️   upgrade atom"
    apm upgrade -c false
fi
