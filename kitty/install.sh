#!/usr/bin/env bash
# Installs the NebulaDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/NebulaDay.conf" ] && cp "$dest/NebulaDay.conf" "$dest/NebulaDay.conf.bak"
cp "$dir/NebulaDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/NebulaDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
