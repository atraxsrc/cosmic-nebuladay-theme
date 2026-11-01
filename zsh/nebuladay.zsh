# Nebula Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-nebuladay-theme/zsh/nebuladay.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #E2E5E9   fg:      #2B2F35
#  teal:    #186A61   apricot: #914C27
#  rose:    #A8243B   sky:     #1D6778
#  lilac:   #604686   periwinkle: #31469B
#  muted:   #555F72   dim:     #858EA2
#
# Light terminal: teal for commands, sky for strings, lilac for links,
# rose only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;49;70;155:ln=3;38;2;96;70;134:ex=1;38;2;24;106;97:*.zip=4;38;2;145;76;39:*.tar=4;38;2;145;76;39:*.gz=4;38;2;145;76;39:*.xz=4;38;2;145;76;39:*.7z=4;38;2;145;76;39:*.deb=4;38;2;145;76;39:*.png=38;2;85;95;114:*.jpg=38;2;85;95;114:*.jpeg=38;2;85;95;114:*.webp=38;2;85;95;114:*.gif=38;2;85;95;114:*.mp4=3;38;2;85;95;114:*.mkv=3;38;2;85;95;114:*.rs=38;2;29;103;120:*.py=38;2;29;103;120:*.js=38;2;29;103;120:*.ts=38;2;29;103;120:*.sh=38;2;29;103;120:*.md=38;2;81;90;108:*.txt=38;2;81;90;108:or=9;38;2;168;36;59"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5B7E91'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#186A61'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#186A61'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#186A61'
ZSH_HIGHLIGHT_STYLES[function]='fg=#186A61'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#186A61'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#186A61,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#1D6778,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#31469B,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#A8243B,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#515A6C,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#914C27'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#914C27'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#555F72'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#555F72'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#1D6778'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#1D6778'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#1D6778'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#555F72'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#555F72'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#858EA2'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

# lazygit reads one config file; stack the rice colours (lazygit/nebuladay.yml,
# installed by ./lazygit/install.sh) on top of your own config.yml
if (( $+commands[lazygit] )); then
    _nebuladay_lg="${XDG_CONFIG_HOME:-$HOME/.config}/lazygit"
    if [[ -f $_nebuladay_lg/nebuladay.yml ]]; then
        export LG_CONFIG_FILE="$_nebuladay_lg/nebuladay.yml"
        [[ -f $_nebuladay_lg/config.yml ]] && LG_CONFIG_FILE="$_nebuladay_lg/config.yml,$LG_CONFIG_FILE"
    fi
    unset _nebuladay_lg
fi

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
