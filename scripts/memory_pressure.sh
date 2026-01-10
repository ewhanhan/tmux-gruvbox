#!/usr/bin/env bash
# Returns memory usage percentage (100 - free percentage) on macOS
# Uses the memory_pressure command which is macOS-specific

# Exit silently on non-macOS (no output, status bar shows nothing)
[[ "$OSTYPE" == darwin* ]] || exit 0

# Check command exists
command -v memory_pressure &>/dev/null || exit 0

memory_pressure 2>&1 | awk '/percentage/{gsub(/%/,""); if ($5 ~ /^[0-9]+$/) printf "%3d%%", 100-$5}'
