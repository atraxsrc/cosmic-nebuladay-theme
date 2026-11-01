#!/usr/bin/env bash
# Installs the NebulaDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/nebuladay.lua" ] && cp "$dest/nebuladay.lua" "$dest/nebuladay.lua.bak"
cp "$dir/nebuladay.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("nebuladay")'
