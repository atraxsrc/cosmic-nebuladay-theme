<div align="center">

# COSMIC · Nebula Day

![Nebula Day palette](assets/palette.png)

Pop!_OS 24.04 on COSMIC in cloud, charcoal and teal: desktop, terminal,
shell, Firefox, Brave, cursor, wallpapers. A light rice in violet and sky;
rose is kept for what is wrong. The light half of a pair;
the dark half is [cosmic-nebula-theme](https://github.com/atraxsrc/cosmic-nebula-theme).

![Pop!_OS](https://img.shields.io/badge/Pop!_OS-24.04_LTS-186a61?style=for-the-badge&logo=popos&logoColor=white)
![COSMIC](https://img.shields.io/badge/COSMIC-1.0.0-1d6778?style=for-the-badge)
![Nebula Day](https://img.shields.io/badge/Theme-NebulaDay-e2e5e9?style=for-the-badge&labelColor=186a61)
![Firefox](https://img.shields.io/badge/Firefox-NebulaDay-186a61?style=for-the-badge&logo=firefox-browser&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-555f72?style=for-the-badge)

</div>

---
![Pop!_OS COSMIC desktop with the Nebula Day theme](assets/screenshot.png)

## Palette

Cloud, a cool off-white, with charcoal text and cool tints between them:
periwinkle, sky, lilac and violet. Teal is the accent, apricot takes
numbers and warnings, and rose is kept for errors and nothing else. Every
text colour is at least 4.5:1 on the window background.

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) Cloud | ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9` |
| Containers | ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) Vapour / Silver | ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) `#F1F3F6` / ![#D8DBDF](https://placehold.co/12x12/d8dbdf/d8dbdf.png) `#D8DBDF` |
| Text | ![#2b2f35](https://placehold.co/12x12/2b2f35/2b2f35.png) Charcoal | ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` |
| Accent | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) Teal | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` |
| Warning | ![#914c27](https://placehold.co/12x12/914c27/914c27.png) Apricot | ![#914C27](https://placehold.co/12x12/914c27/914c27.png) `#914C27` |
| Error | ![#a8243b](https://placehold.co/12x12/a8243b/a8243b.png) Rose | ![#A8243B](https://placehold.co/12x12/a8243b/a8243b.png) `#A8243B` |
| Success | ![#1d6778](https://placehold.co/12x12/1d6778/1d6778.png) Sky | ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` |
| Lilac | ![#604686](https://placehold.co/12x12/604686/604686.png) Symlinks, yellow slot | ![#604686](https://placehold.co/12x12/604686/604686.png) `#604686` |
| Periwinkle | ![#31469B](https://placehold.co/12x12/31469b/31469b.png) Directories, types | ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` |
| Muted | ![#555f72](https://placehold.co/12x12/555f72/555f72.png) Secondary text | ![#555F72](https://placehold.co/12x12/555f72/555f72.png) `#555F72` |
| Dim | ![#858ea2](https://placehold.co/12x12/858ea2/858ea2.png) Comments | ![#858EA2](https://placehold.co/12x12/858ea2/858ea2.png) `#858EA2` |
| Lines | ![#a6a8ab](https://placehold.co/12x12/a6a8ab/a6a8ab.png) Box lines, inactive | ![#A6A8AB](https://placehold.co/12x12/a6a8ab/a6a8ab.png) `#A6A8AB` |

| Role | Nebula Day | Nebula |
|------|---|---|
| Background | ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9` | ![#181C22](https://placehold.co/12x12/181c22/181c22.png) `#181C22` |
| Text | ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` | ![#E0E6ED](https://placehold.co/12x12/e0e6ed/e0e6ed.png) `#E0E6ED` |
| Accent | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` |
| Success | ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` | ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF` |
| Error | ![#A8243B](https://placehold.co/12x12/a8243b/a8243b.png) `#A8243B` | ![#FF7B92](https://placehold.co/12x12/ff7b92/ff7b92.png) `#FF7B92` |

The accent is teal, 5.1:1 on the background and 5.8:1 on a container,
so it stays the same colour wherever it is text; buttons and selections
carry it with cloud-white text on top.

---

## Repo Structure

```
.
├── brave
│   ├── theme                    # Chromium theme (manifest + icons), Load unpacked
│   └── README.md
├── btop
│   └── NebulaDay.theme                 # btop colour theme
├── claude-desktop
│   ├── cosmic-nebula.jsonc          # Claude Desktop theme (claude-desktop-extra)
│   └── install.sh
├── cosmic
│   ├── NebulaDay.ron                   # COSMIC Appearance import (Light)
│   ├── config/                  # baseline settings: fonts, icons, terminal look
│   └── install.sh
├── cosmic-term
│   ├── NebulaDay-term.ron              # COSMIC Terminal colour scheme
│   ├── NebulaDay-term-*.ron            # dimmer plain-text variants, same ANSI colours
│   └── README.md                # previews and which one to pick
├── cursors
│   ├── Oxygen-NebulaDay-*/             # cursor themes, one per icon colour, patched for COSMIC apps
│   ├── recolour.py              # makes a variant from any other, see cursors/README.md
│   ├── install.sh
│   ├── uninstall.sh
│   └── README.md
├── icons
│   └── install.sh               # Cosmic-NebulaDay icon pack from cosmic-icon-themes
├── fastfetch
│   ├── config.jsonc             # teal / periwinkle fastfetch config
│   ├── cosmic.txt               # COSMIC logo
│   └── install.sh
├── firefox
│   ├── theme                    # Cosmic Nebula Day theme add-on (manifest + icons)
│   ├── chrome
│   │   ├── userChrome.css       # rounded chrome, vapour menus
│   │   └── userContent.css      # new tab accent
│   ├── install.sh
│   └── README.md
├── lsd
│   ├── config.yaml              # theme: custom
│   ├── colors.yaml              # permission / size / date / git columns
│   └── install.sh
├── nvim                         # Neovim colorscheme, LazyVim spec, RON syntax, install.sh
├── telegram
│   ├── colors.tdesktop-theme    # Telegram Desktop colour scheme (source)
│   ├── cosmic-nebuladay.tdesktop-theme # built theme, open this in Telegram
│   └── build.sh                 # rebuilds it, optionally with a wallpaper
├── vscode
│   ├── themes/                  # Cursor / VS Code colour themes, Nebula (dark) + Nebula Day (light)
│   ├── package.json             # extension manifest
│   ├── install.sh               # packs a .vsix, installs it with cursor --install-extension
│   └── README.md
├── scripts
│   ├── update_system.sh         # nala + flatpak, teal / sky ANSI
│   └── switch.sh                # make this the active rice (see Switching rice)
├── zsh
│   ├── nebuladay.zsh                   # LS_COLORS, highlighting colours, aliases, starship
│   └── install.sh
├── assets
│   ├── cursors/                 # cursor preview
│   ├── cosmic-term/             # scheme previews for cosmic-term/README.md
│   ├── palette.png              # the 16 terminal colours, under the title
│   ├── screenshot.png           # README screenshot
│   └── wallpaper.png            # the gaze wallpaper at 2560x1440
├── backgrounds/                 # wallpapers, nebuladay-<subject>.png (see Icons and wallpaper)
├── docs
│   └── showcase.md              # the rice describing itself, for the Postilla pane of a screenshot
├── LICENSE
└── README.md
```

---

## COSMIC Desktop

This is a **Light** theme, so it goes in COSMIC's Light slot:

Settings → Desktop → Appearance → **Light** → **Import** → `cosmic/NebulaDay.ron`

Accent is teal ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61`. Use the `+` control if you want a custom swatch.

Frosted glass is on in the `.ron` at `frosted: Low` with an opacity table of
0.66 to 0.96, tinted with the palette's dim grey, for windows, panel,
applets and system UI (maximized apps stay solid), and corners are squared
(`radius_*: 2.0`), the same as the DarkGold baseline. Adjust frosted glass on
Appearance → Style → Frosted glass after import; those sliders survive a theme switch.

Export from Appearance if you tweak backgrounds / tints so you do not lose them.

Pairing tip: import `Nebula.ron` from
[cosmic-nebula-theme](https://github.com/atraxsrc/cosmic-nebula-theme) into the
Dark slot and COSMIC's Dark / Light toggle flips between the two. Wallpaper,
Firefox and the shell layer do not follow the toggle; those are per-rice files.

### Baseline settings

`cosmic/config/` holds the settings that make up the look and rarely change
(panel, dock, applets and shortcuts are left out on purpose):

| Where | Setting |
|-------|---------|
| Fonts | Interface `Maple Mono Normal` Light, monospace `Maple Mono Normal NFM` |
| Icons | Cosmic-NebulaDay-Teal |
| Windows | Minimize / maximize buttons hidden, theme applied to GNOME apps |
| Terminal | Maple Mono 15 (weights 500 / bold 800 / dim 300), 77% opacity, no header bar, Nebula Day |

Install the [Maple fonts](https://github.com/subframe7536/maple-font/releases)
(Maple Mono Normal and Maple Mono Normal NFM) and the Cosmic-NebulaDay icons (see
Icons below) and import the terminal scheme first, then:

```bash
./cosmic/install.sh
```

It backs up each file it replaces to `*.bak` and COSMIC applies it live.

The interface font is the Light weight on purpose. COSMIC sets interface text
brightness itself (the text tint only picks the hue), so on these light panels
labels land near ![#4A3667](https://placehold.co/12x12/4a3667/4a3667.png) `#4A3667` whatever tint you choose; the thinner strokes are
what calms them at night. Settings → Fonts lists only families, so the weight
lives in `cosmic/config/com.system76.CosmicTk/v1/interface_font`.

---

## COSMIC Terminal

The desktop `.ron` does not colour ANSI text.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. Light tab → **Import** → `cosmic-term/NebulaDay-term.ron`
3. View → Settings → Appearance → Color scheme (light) → **Nebula Day**

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing.

Charcoal text on cloud; rose for errors, teal for the cursor and the
`blue` slot, sky for strings and success, lilac in the yellow slot, apricot
in the magenta slot for numbers, periwinkle for directories.

If charcoal is not the plain text you want, there are five other variants
with the same ANSI colours, from Fog ![#555F72](https://placehold.co/12x12/555f72/555f72.png) `#555F72` up to
Iron ![#39404C](https://placehold.co/12x12/39404c/39404c.png) `#39404C`. Previews and which to
pick: [`cosmic-term/README.md`](cosmic-term/README.md).

---

## Firefox

Two layers:

1. **Theme (colours):** `firefox/theme` is a WebExtension theme, **Cosmic Nebula Day**.
   Until it is listed on addons.mozilla.org, load it from the folder:
   `about:debugging#/runtime/this-firefox` → **Load Temporary Add-on** →
   `firefox/theme/manifest.json` (gone on restart), or zip it and have AMO
   sign it for you; see [`firefox/README.md`](firefox/README.md).
   This is the main look.
2. **Stylesheets (optional):** `firefox/chrome/` adds rounded corners, teal
   menu hover, teal accents and blank new-tab tiles on top of the theme
   (they also work with Firefox's built-in Light theme):

```bash
./firefox/install.sh
```

Fully quit Firefox afterward. Details and CSS rules: [`firefox/README.md`](firefox/README.md).

---

## Brave

`brave/theme` is a Chromium theme with the Firefox theme's colours: cloud
frame, vapour toolbar, sky icons and inactive tabs, teal on the
active tab. Brave, Chrome, Chromium and Edge take it, and it loads straight
from the clone, so no Chrome Web Store or Google account is needed:

`brave://extensions` → **Developer mode** → **Load unpacked** → `brave/theme`

Leave the clone in place, Brave keeps reading the folder. Colours, limits and
packing a `.crx`: [`brave/README.md`](brave/README.md).

---

## Claude Desktop

For the unofficial [claude-desktop-extra](https://github.com/patrickjaja/claude-desktop-extra)
Linux build. `claude-desktop/cosmic-nebula.jsonc` is one theme with both halves:
Nebula in dark mode and Nebula Day in light mode, so Claude's own
Settings → Appearance toggle switches between the two rices.
Colours come from `cosmic/*.ron`, contrast-checked (text and
button text 4.5:1, accents 3:1).

```bash
./claude-desktop/install.sh
```

It copies the file into `~/.config/Claude/themes.d/`. Then press
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd> in Claude Desktop and pick **cosmic-nebula**.

The same file ships in [`cosmic-nebula-theme`](https://github.com/atraxsrc/cosmic-nebula-theme),
so installing from either repo gives the same theme.

---

## Cursor editor

`vscode/` is a colour theme extension for [Cursor](https://cursor.com) with
both halves of the pair: **Cosmic Nebula** and **Cosmic Nebula Day**. It is a
plain VS Code theme extension, so VS Code and VSCodium take it too, and the
same extension ships in cosmic-nebula-theme. Code is coloured the way Neovim
is in the rice; the workbench is cloud with vapour menus, hovers and inputs,
teal on the active tab, buttons and menu highlight, and the integrated
terminal uses the COSMIC Terminal scheme. Cursor builds its Agent and chat
panels from the same theme colours, so they follow along.

```bash
./vscode/install.sh
```

It packs `vscode/` into a `.vsix` and installs it with
`cursor --install-extension`; run it again after editing the theme. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> in Cursor and pick
**Cosmic Nebula Day**. Three lines in Cursor's `settings.json` make it follow
COSMIC's Dark / Light toggle between Nebula and Nebula Day; they, the colours and
the contrast notes are in [`vscode/README.md`](vscode/README.md).

---

## Telegram

`telegram/cosmic-nebuladay.tdesktop-theme` is a Telegram Desktop theme: cloud chat
list and background, vapour incoming and dark-sky outgoing bubbles, teal
for the accent, links, unread badges and buttons (with cloud text on them),
sky for online status and read ticks, rose only where Telegram marks
something wrong. Group member names cycle through eight of the rice's
colours. Text and badge colours are contrast-checked at 4.5:1 or better,
except disabled menu items.

Settings → Chat Settings → Chat wallpaper → **Choose from file** →
`telegram/cosmic-nebuladay.tdesktop-theme` → **Apply this theme**.

The colours live in `telegram/colors.tdesktop-theme`, which is plain text;
`build.sh` zips it with the chat background into the `.tdesktop-theme`. The
background is plain cloud; to put a wallpaper behind the chat instead
(ImageMagick re-encodes it to a 2560px JPEG, Telegram caps theme files at 5 MB):

```bash
./telegram/build.sh --wallpaper backgrounds/nebuladay-gaze.png
```

Built against Telegram Desktop 7.3.1. Calls, group calls, statistics charts and
premium badges keep Telegram's own colours.

Telegram has no dark / light pairing, so Nebula, the dark half, ships its
own theme.

---

## Cursor

**Oxygen** cursors recoloured to the icon colours, one per folder colour of the
Cosmic-NebulaDay icon pack: **Teal** (default), **Rose**, **Dark**. Patched with the cursor
names COSMIC apps ask for. COSMIC has no cursor picker yet, so the script sets it:

```bash
./cursors/install.sh                      # Teal
./cursors/install.sh --variant Dark      # or another, see --list
reboot
```

Previews, what the script touches, how to undo it and how the colours are made:
[`cursors/README.md`](cursors/README.md).

---

## Scripts

### `update_system.sh`

nala + flatpak updater. Headers in teal, info in periwinkle, success in sky,
warnings in apricot, errors in rose; the banner ramps from sky to
lilac, the rule below it from teal into sky.

```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
```

### `switch.sh`

Makes this the active rice, coming from any other `cosmic-*-theme` rice. See
[Switching rice](#switching-rice).

```bash
./scripts/switch.sh
```

---

## Terminal extras

Need a [Nerd Font](https://www.nerdfonts.com/) in the terminal for the icons
(Maple Mono NFM in the baseline above).

### zsh

`zsh/nebuladay.zsh` is the rice part of the shell only: `LS_COLORS` (also used by
lsd for file names and by the completion menu), teal / sky / lilac colours
for zsh-autosuggestions and zsh-syntax-highlighting, lsd / bat / nvim aliases
and the starship prompt. Your own `~/.zshrc` stays private and sources it.

Needs zsh + [oh-my-zsh](https://ohmyz.sh/). `install.sh` clones the two
plugins if missing and appends one `source` line to `~/.zshrc` (backup in
`~/.zshrc.bak`):

```bash
./zsh/install.sh
exec zsh
```

In `~/.zshrc` keep `ZSH_THEME=""` and
`plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)`.

### lsd

File names are coloured by `LS_COLORS` from `zsh/nebuladay.zsh`;
`lsd/colors.yaml` colours the other columns with the 256-colour codes nearest
the palette (23 teal, 125 rose, 94 apricot, 24 sky, 60 lilac,
60 periwinkle, 241 fog, 103 dusk.). lsd 1.0.0 does not accept `#hex` there.

```bash
./lsd/install.sh
lsd -l
```

### fastfetch

COSMIC logo in teal, Hardware / Software / Age boxes in dim grey with
periwinkle keys. `install.sh` backs up any existing
`~/.config/fastfetch/config.jsonc` to `config.jsonc.bak`.

```bash
./fastfetch/install.sh
fastfetch
```

### Neovim

`nvim/` carries the rice into Neovim: a dependency-free colorscheme built from
the palette (`nvim/colors/nebuladay.lua`), a LazyVim spec that selects it and makes
sure the treesitter parsers for the files in this repo are installed
(`nvim/lua/plugins/nebuladay.lua`), and a small RON syntax file so `cosmic/*.ron`
is coloured even before the parser exists. `:terminal` inside Neovim uses the
Nebula Day scheme.

```bash
./nvim/install.sh
# restart nvim; LazyVim switches to the nebuladay colorscheme
```

Without LazyVim, copy `nvim/colors/nebuladay.lua` to `~/.config/nvim/colors/` and
run `:colorscheme nebuladay`.

### btop

`btop/NebulaDay.theme`: cloud background, dim grey boxes, teal titles, meters
ramp from sky through lilac to rose.

```bash
mkdir -p ~/.config/btop/themes
cp btop/NebulaDay.theme ~/.config/btop/themes/
# btop → Esc → Options → Color theme → Nebula Day
```

---

## Icons and wallpaper

Icons: **Cosmic-NebulaDay**, the [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa)
by Fausto Korpsvart recolored to this palette in
[cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes). Folders come in
three colors: **Teal** ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` (default), **Rose** ![#A8243B](https://placehold.co/12x12/a8243b/a8243b.png) `#A8243B` and **Dark** ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` with teal symbols.

![Cosmic-NebulaDay folder colors](https://raw.githubusercontent.com/atraxsrc/cosmic-icon-themes/main/previews/Cosmic-NebulaDay.png)

```bash
./icons/install.sh                       # Teal folders
./icons/install.sh --variant Rose  # or Dark
```

It downloads the pack from the latest cosmic-icon-themes release, checks its SHA256,
installs it to `~/.local/share/icons/` and sets it as the COSMIC icon theme.
Restart open apps afterwards (Files caches icons per window).
Add `--system` to install to `/usr/share/icons` instead, for every user and the
login screen (asks for sudo); `--user` is the default.

Wallpapers ship in [`backgrounds/`](backgrounds/), named `nebuladay-<subject>`:
the same five scenes as Nebula, lifted into Nebula Day's light key, in blue and violet: a girl with blue hair
under the stars, an aurora over a lake, a citadel in snow, ink curling in
water and a neon frame, plus the anime portrait from the screenshot
(`nebuladay-anime.png`) in the palette's own tones. The girl
(`nebuladay-gaze.png`) is the one in `assets/wallpaper.png` at 2560x1440.

Settings → Wallpaper → Add image → a file from `backgrounds/`, or one you downloaded.

---

## Setup

```bash
git clone https://github.com/atraxsrc/cosmic-nebuladay-theme.git
cd cosmic-nebuladay-theme

# desktop
# Settings → Appearance → Light → Import cosmic/NebulaDay.ron

# terminal
# View → Color schemes → Light tab → Import cosmic-term/NebulaDay-term.ron

# firefox theme: about:debugging → Load Temporary Add-on → firefox/theme/manifest.json
# (or zip and sign it, see firefox/README.md)

# optional extra chrome
./firefox/install.sh

# brave: brave://extensions → Developer mode → Load unpacked → brave/theme

# claude desktop (claude-desktop-extra), then Ctrl+Shift+T
./claude-desktop/install.sh

# cursor editor, then Ctrl+K Ctrl+T → Cosmic Nebula Day
./vscode/install.sh

# telegram desktop
# Settings → Chat Settings → Chat wallpaper → Choose from file → telegram/cosmic-nebuladay.tdesktop-theme

# cursor (then reboot), see cursors/README.md
./cursors/install.sh                      # Teal
./cursors/install.sh --variant Dark      # or another, see --list
reboot

# shell + terminal tools (see Terminal extras above)
./zsh/install.sh
./lsd/install.sh
./fastfetch/install.sh
./nvim/install.sh
mkdir -p ~/.config/btop/themes && cp btop/NebulaDay.theme ~/.config/btop/themes/

# wallpaper
# Settings → Wallpaper → Add image → a file from backgrounds/ (see Icons and wallpaper above)

./icons/install.sh                  # icons (see Icons above)
# Maple fonts (https://github.com/subframe7536/maple-font), then
# fonts, icons, terminal look from cosmic/config/
./cosmic/install.sh
```

---

## Switching rice

The installers replace what they own (with a `*.bak` copy), but some things
pile up instead: shell layers in `~/.zshrc`, LazyVim specs, the updater link and
btop's theme setting. `scripts/switch.sh` makes Nebula Day the active rice, coming
from any other `cosmic-*-theme` rice, and tidies those up. Every rice repo ships
the same script.

```bash
./scripts/switch.sh               # switch, icons included
./scripts/switch.sh --keep-icons  # leave the current icon theme alone
```

It backs up every file it replaces, then:

- copies `cosmic/config/` (fonts, terminal look, icons) and turns light mode on.
  The terminal scheme and icon theme are only replaced when the current one is
  not already a Nebula Day variant, so a dimmer text variant or another icon colour
  survives. Icons stay as they are until `./icons/install.sh` has run.
- runs the fastfetch, lsd, Neovim and Claude Desktop installers and sets
  btop's `color_theme`
- moves every other rice's LazyVim spec from `~/.config/nvim/lua/plugins/` to
  `~/.config/nvim/rice-off/` (LazyVim loads every spec there and the last
  colorscheme wins); your own specs stay
- comments out every other rice's `source` line in `~/.zshrc`, and
  cosmic-ricing's `ricing/zsh/colors.zsh`, then uncomments Nebula Day's or adds it
- points `~/update_system.sh` at this repo's updater
- installs the Firefox userChrome / userContent

The GUI steps it cannot do are printed at the end:

1. Settings → Desktop → Appearance → Light → Import `cosmic/NebulaDay.ron`
2. COSMIC Terminal → View → Color schemes → Light tab → Import `cosmic-term/NebulaDay-term.ron`
3. Firefox: disable the old rice's add-on, enable this one, restart Firefox
4. Settings → Wallpaper → a file from `backgrounds/`
5. Claude Desktop: Ctrl+Shift+T → `cosmic-nebula`, Appearance → Light
6. `exec zsh`, restart Neovim (`:Lazy clean` drops plugins only the old specs used)

Skip 1 and 2 when that slot already holds Nebula Day. The first time on this rice,
run [Setup](#setup) once for the fonts, icons and cursor.

**Within the pair** (Nebula Day ↔ [Nebula](https://github.com/atraxsrc/cosmic-nebula-theme)): the two halves
sit side by side in COSMIC's Dark and Light slots and share one Claude Desktop
theme, so after the first time only the Firefox add-on and the wallpaper are
left by hand. Add `--keep-icons` to keep one icon colour across the pair.

Leaving Nebula Day is the next rice's `./scripts/switch.sh`. `./cursors/uninstall.sh`
puts the Pop cursor back.

---

## Stack

| Tool | What it does |
|------|-------------|
| [Pop!_OS 24.04](https://pop.system76.com/) | Base OS by System76 |
| [COSMIC DE](https://system76.com/cosmic) | Desktop environment |
| [oh-my-zsh](https://ohmyz.sh/) | zsh framework + plugins |
| [lsd](https://github.com/lsd-rs/lsd) | `ls` with icons and colours |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [btop](https://github.com/aristocratos/btop) | Resource monitor |
| [cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes) | Icon pack (Cosmic-NebulaDay), recolored from [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa) |
| [Oxygen-Cursors](https://github.com/wo2ni/Oxygen-Cursors) | Cursor, recoloured to the icon colours |

## Credits

- Shared baseline (frosted glass, squared corners, fonts, the Firefox and
  Chromium theme recipes, the scripts) from
  [cosmic-darkgold-theme](https://github.com/atraxsrc/cosmic-darkgold-theme) and
  [cosmic-noir-theme](https://github.com/atraxsrc/cosmic-noir-theme).

## License

MIT. The cursor artwork keeps the terms of KDE's Oxygen project, see
[`cursors/README.md`](cursors/README.md).
