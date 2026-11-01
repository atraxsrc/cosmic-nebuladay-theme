#!/usr/bin/env bash
# Installs the NebulaDay Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/nebuladay.toml" ] && cp "$dest/nebuladay.toml" "$dest/nebuladay.toml.bak"
cp "$dir/nebuladay.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "nebuladay"'
