#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo ""
else
    if command -v apt >/dev/null 2>/dev/null; then
        echo "🐧 update apt"
        sudo apt -qq update && \
        sudo apt upgrade -qq -y && \
        sudo apt autoremove -y
    elif command -v apt-get >/dev/null 2>/dev/null; then
        echo "🐧 update apt-get"
        sudo apt-get -qq update && \
        sudo apt-get -qq upgrade -y && \
        sudo apt-get autoremove -y
    fi
fi
