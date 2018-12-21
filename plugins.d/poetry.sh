#!/usr/bin/env bash
if which poetry >/dev/null 2>/dev/null; then
    poetry self:update
fi
