#!/usr/bin/env bash

# Set path of script
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Store plugin directory for scripts that need it
tmux set -g @gruvbox_plugin_dir "${PLUGIN_DIR}"

tmux source "${PLUGIN_DIR}/gruvbox_options_tmux.conf"
tmux source "${PLUGIN_DIR}/gruvbox_tmux.conf"
