#!/usr/bin/env bash
echo "⚛️   Atom editor will be shiny when you'll be back from your coffee/tea break!"
if which apm-beta 2>/dev/null; then
    apm-beta upgrade -c false
fi
if which apm 2>/dev/null; then
    apm upgrade -c false
fi
echo ""
