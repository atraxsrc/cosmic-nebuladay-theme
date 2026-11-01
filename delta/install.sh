#!/usr/bin/env bash
# Installs the NebulaDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/nebuladay.gitconfig" ] && cp "$dest/nebuladay.gitconfig" "$dest/nebuladay.gitconfig.bak"
cp "$dir/nebuladay.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/nebuladay.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/nebuladay.gitconfig"
fi
echo "Needs the bat NebulaDay theme for the code colours: ./bat/install.sh"
