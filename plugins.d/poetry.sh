#!/usr/bin/env bash
if which poetry >/dev/null 2>/dev/null; then
    echo "🐍 Update poetry"
    poetry self:update
fi
