# Nebula Day

> Cloud, charcoal and teal, violet and sky, with rose kept for what is wrong. A day sky over blue-grey.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` | 10.6:1 |
| Teal, accent | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` | 5.1:1 |
| Apricot, warning | ![#914C27](https://placehold.co/12x12/914c27/914c27.png) `#914C27` | 5.1:1 |
| Rose, error | ![#A8243B](https://placehold.co/12x12/a8243b/a8243b.png) `#A8243B` | 5.6:1 |
| Sky, success | ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` | 5.1:1 |
| Lilac, symlinks | ![#604686](https://placehold.co/12x12/604686/604686.png) `#604686` | 6.1:1 |
| Periwinkle, directories | ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` | 6.7:1 |
| Muted | ![#555F72](https://placehold.co/12x12/555f72/555f72.png) `#555F72` | 5.1:1 |

Containers sit one step away from the background at ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) `#F1F3F6`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Nebula Day palette] --> D[COSMIC desktop<br/>NebulaDay.ron, Dark slot]
    P --> T[COSMIC Terminal<br/>Nebula Day]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Dark + userChrome]
```

## Setup, in order

- [x] Import `cosmic/NebulaDay.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/NebulaDay-term.ron`, pick **Nebula Day** for the profile
- [x] `./icons/install.sh` for the **Cosmic-NebulaDay** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-NebulaDay-Teal
- [x] Wallpaper: `backgrounds/nebuladay-gaze.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
