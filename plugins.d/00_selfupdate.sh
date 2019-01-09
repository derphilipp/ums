#!/usr/bin/env bash
set -Eeuo pipefail

echo "🌟 UMS self update"
pushd "$HOME/.ums" > /dev/null
git pull
popd > /dev/null
echo ""
