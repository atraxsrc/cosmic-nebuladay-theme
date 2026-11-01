#!/usr/bin/env bash
# Installs the NebulaDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/NebulaDay" ] && cp "$dest/NebulaDay" "$dest/NebulaDay.bak"
cp "$dir/NebulaDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = NebulaDay"
echo "(or  theme = dark:Nebula,light:NebulaDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
