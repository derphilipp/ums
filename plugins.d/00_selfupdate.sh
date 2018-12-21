#!/usr/bin/env bash
echo "🌟 UMS self update"
pushd "$HOME/.ums" > /dev/null
git pull
popd > /dev/null
echo ""
