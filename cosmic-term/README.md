# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Light** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (light) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Nebula Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Nebula Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays teal ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61`.

The ANSI slots follow the rice: `red` is rose ![#A8243B](https://placehold.co/12x12/a8243b/a8243b.png) `#A8243B`, the one colour
kept for what is wrong; `green` is sky ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778`; `yellow` is lilac
![#604686](https://placehold.co/12x12/604686/604686.png) `#604686`; `blue` is the teal accent ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the sky
`No Change:`; `magenta` is apricot ![#914C27](https://placehold.co/12x12/914c27/914c27.png) `#914C27`, the warm colour numbers and
warnings take; `cyan` is fog ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778`; `white` is
![#4A5059](https://placehold.co/12x12/4a5059/4a5059.png) `#4A5059`. Directories are not affected: `LS_COLORS` in `zsh/nebuladay.zsh` colours
them in truecolor.

## Which one

Charcoal ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` is the default. The others move through Nebula Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Nebula Day Fog | ![#555F72](https://placehold.co/12x12/555f72/555f72.png) `#555F72` | 5.1:1 | muted text, the dim text colour |
| Nebula Day Periwinkle | ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` | 6.7:1 | directories (`LS_COLORS`), types |
| Nebula Day Sky | ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` | 5.1:1 | strings, success, the `green` slot |
| Nebula Day Teal | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` | 5.1:1 | the accent, the cursor and the `blue` slot |
| Nebula Day Iron | ![#39404C](https://placehold.co/12x12/39404c/39404c.png) `#39404C` | 8.3:1 | a neutral a step from plain text |
| **Nebula Day** (default) | ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` | 10.6:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Nebula Day Periwinkle, for example, look like plain text.
Rose errors and apricot numbers stand out more against the dimmer
schemes than against charcoal.

**Bold:** `bright_foreground` (![#1F2329](https://placehold.co/12x12/1f2329/1f2329.png) `#1F2329`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Light

**Nebula Day** · `NebulaDay-term.ron` · charcoal ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35`, 10.6:1. The default.

![Nebula Day](../assets/cosmic-term/NebulaDay-term.png)

**Nebula Day Fog** · `NebulaDay-term-fog.ron` · ![#555F72](https://placehold.co/12x12/555f72/555f72.png) `#555F72`, 5.1:1. Muted text, the dim text colour.

![Nebula Day Fog](../assets/cosmic-term/NebulaDay-term-fog.png)

**Nebula Day Periwinkle** · `NebulaDay-term-periwinkle.ron` · ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B`, 6.7:1. Directories (`LS_COLORS`), types.

![Nebula Day Periwinkle](../assets/cosmic-term/NebulaDay-term-periwinkle.png)

**Nebula Day Sky** · `NebulaDay-term-sky.ron` · ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778`, 5.1:1. Strings, success, the `green` slot.

![Nebula Day Sky](../assets/cosmic-term/NebulaDay-term-sky.png)

**Nebula Day Teal** · `NebulaDay-term-teal.ron` · ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61`, 5.1:1. The accent, the cursor and the `blue` slot.

![Nebula Day Teal](../assets/cosmic-term/NebulaDay-term-teal.png)

**Nebula Day Iron** · `NebulaDay-term-iron.ron` · ![#39404C](https://placehold.co/12x12/39404c/39404c.png) `#39404C`, 8.3:1. A neutral a step from plain text.

![Nebula Day Iron](../assets/cosmic-term/NebulaDay-term-iron.png)

Contrast is plain text on the theme background, WCAG 2.
