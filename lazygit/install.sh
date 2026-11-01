#!/usr/bin/env bash
# Installs the NebulaDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/nebuladay.yml" ] && cp "$dest/nebuladay.yml" "$dest/nebuladay.yml.bak"
cp "$dir/nebuladay.yml" "$dest/"
echo "Done. zsh/nebuladay.zsh points LG_CONFIG_FILE at config.yml plus nebuladay.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/nebuladay.yml\""
