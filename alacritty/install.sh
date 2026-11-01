#!/usr/bin/env bash
# Installs the NebulaDay Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/nebuladay.toml" ] && cp "$dest/nebuladay.toml" "$dest/nebuladay.toml.bak"
cp "$dir/nebuladay.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/nebuladay.toml"]'
