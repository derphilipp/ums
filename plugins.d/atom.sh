#!/usr/bin/env bash
echo "⚛️   update atom"
if which apm-beta 2>/dev/null; then
    apm-beta upgrade -c false
fi
if which apm 2>/dev/null; then
    apm upgrade -c false
fi
echo ""
