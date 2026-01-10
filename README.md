# Gruvbox for Tmux

> A [Gruvbox](https://github.com/morhetz/gruvbox)-themed fork of [catppuccin/tmux](https://github.com/catppuccin/tmux)

<p align="center">
  <img src="./assets/dark.webp"/>
</p>

## Installation

In order to have the icons displayed correctly please use/update your favorite
[nerd font](https://www.nerdfonts.com/font-downloads).
If you do not have a patched font installed, you can override or remove any
icon. Check the [documentation](./docs/reference/configuration.md) on the
options available.

### Manual (Recommended)

This method is recommended as TPM has some issues with name conflicts.

<!-- x-release-please-start-version -->

1. Clone this repository to your desired location (e.g.
   `~/.config/tmux/plugins/tmux-gruvbox`).

   ```bash
   mkdir -p ~/.config/tmux/plugins
   git clone -b v3.0.0 https://github.com/ewhanhan/tmux-gruvbox.git ~/.config/tmux/plugins/tmux-gruvbox
   ```

1. Add the following line to your `tmux.conf` file:
   `run ~/.config/tmux/plugins/tmux-gruvbox/gruvbox.tmux`.
1. Reload Tmux by either restarting or reloading with `tmux source ~/.tmux.conf`.
<!-- x-release-please-end -->

Check out what to do next in the "[Getting Started Guide](./docs/tutorials/01-getting-started.md)".

### TPM

<!-- x-release-please-start-version -->

1. Install [TPM](https://github.com/tmux-plugins/tpm)
1. Add the Gruvbox plugin:

   ```bash
   set -g @plugin 'ewhanhan/tmux-gruvbox#v3.0.0' # See https://github.com/ewhanhan/tmux-gruvbox/tags for additional tags
   # ...alongside
   set -g @plugin 'tmux-plugins/tpm'
   ```

<!-- x-release-please-end -->

> [!IMPORTANT]
> You may have to run `~/.config/tmux/plugins/tpm/bin/clean_plugins`
> if upgrading from an earlier version
> (especially from `v0.3.0`).

### For TMUX versions prior to 3.2

This plugin uses features that were only introduced into tmux in version 3.2.
If you are using a version earlier than this, you can still have lovely
gruvbox colors, the installation method just looks a little different.

```sh
# In your ~/.tmux.conf

# Add the colors from the pallete. Check the themes/ directory for all options.

# Some basic gruvbox dark colors.
set -g @grv_bg "#282828"
set -g @grv_surface_1 "#3c3836"
set -g @grv_fg "#ebdbb2"
set -g @grv_purple "#b16286"
set -g @grv_crust "#1d2021"

# status line
set -gF status-style "bg=#{@grv_bg},fg=#{@grv_fg}"

# windows
set -gF window-status-format "#[bg=#{@grv_surface_1},fg=#{@grv_fg}] ##I ##T "
set -gF window-status-current-format "#[bg=#{@grv_purple},fg=#{@grv_crust}] ##I ##T "
```

### Upgrading from v0.3

Breaking changes have been introduced since 0.3, to understand how to migrate
your configuration, see the [upstream migration guide](https://github.com/catppuccin/tmux/issues/487).

## Recommended Default Configuration

This configuration shows some customisation options, that can be further
extended as desired.
This is what is used for the previews above.

![Example configuration](./assets/dark.webp)

```bash
# ~/.tmux.conf

# Options to make tmux more pleasant
set -g mouse on
set -g default-terminal "tmux-256color"

# Configure the gruvbox plugin
set -g @gruvbox_flavor "dark"
set -g @gruvbox_window_status_style "rounded"

# Load gruvbox
run ~/.config/tmux/plugins/tmux-gruvbox/gruvbox.tmux
# For TPM, instead use `run ~/.tmux/plugins/tmux-gruvbox/gruvbox.tmux`

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@gruvbox_status_application}"
set -agF status-right "#{E:@gruvbox_status_cpu}"
set -ag status-right "#{E:@gruvbox_status_session}"
set -ag status-right "#{E:@gruvbox_status_uptime}"
set -agF status-right "#{E:@gruvbox_status_battery}"

run ~/.config/tmux/plugins/tmux-plugins/tmux-cpu/cpu.tmux
run ~/.config/tmux/plugins/tmux-plugins/tmux-battery/battery.tmux
# Or, if using TPM, just run TPM
```

## Documentation

### Guides

- [Getting Started](./docs/tutorials/01-getting-started.md)
- [Custom Status Line Segments](./docs/tutorials/02-custom-status.md)
- [Troubleshooting](./docs/guides/troubleshooting.md)

### Reference

- [Status Line](./docs/reference/status-line.md)
- [Configuration Options Reference](./docs/reference/configuration.md)
- [Tmux Configuration Showcase](https://github.com/ewhanhan/tmux-gruvbox/discussions)

## Attribution

This project is a fork of [catppuccin/tmux](https://github.com/catppuccin/tmux),
adapted with Gruvbox colors. Thanks to the original Catppuccin contributors.
