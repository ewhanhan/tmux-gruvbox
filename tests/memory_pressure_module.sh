#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
# shellcheck disable=SC1091
source "${script_dir}/helpers.sh"

# Set plugin directory (normally done by gruvbox.tmux)
tmux set -g @gruvbox_plugin_dir "${script_dir}/.."

# Tests that the default options are set correctly
tmux source "${script_dir}/../gruvbox_options_tmux.conf"
tmux source "${script_dir}/../gruvbox_tmux.conf"

print_option E:@gruvbox_status_memory_pressure
