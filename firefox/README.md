# Firefox - Nebula Day

Firefox chrome matching the COSMIC Nebula Day rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for cloud and teal.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9` | Frame, page chrome, text on teal |
| ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) `#F1F3F6` | Panels, menus             |
| ![#CEDDDE](https://placehold.co/12x12/ceddde/ceddde.png) `#CEDDDE` | Menu hover row (teal tinted into the panel) |
| ![#BDD2D2](https://placehold.co/12x12/bdd2d2/bdd2d2.png) `#BDD2D2` | Menu pressed row          |
| ![#CED1D4](https://placehold.co/12x12/ced1d4/ced1d4.png) `#CED1D4` | Separators, menu border   |
| ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` | Accent, URL bar border, hover rail |
| ![#12514A](https://placehold.co/12x12/12514a/12514a.png) `#12514A` | Accent hover              |
| ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` | Menu text, new tab active |
| ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` | Links                     |
| ![#1F2329](https://placehold.co/12x12/1f2329/1f2329.png) `#1F2329` | Hover text                |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Nebula Day)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from nebuladay-gaze
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, teal menu hover
│   └── userContent.css   new tab page: teal accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** `theme/` colours the toolbar, tabs, URL bar, menus,
   sidebar and new tab page. This is the main look. Load it from the folder
   (below) or from addons.mozilla.org once it is listed there.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, teal menu
   hover, teal accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Dark theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme: icons take the calm
colour (sky here, gold there), and everything "hot" (tab line, pressed
button, menu and sidebar selection, loading) takes the accent (teal here,
coral there). Nebula Day's hot roles are apricot and rose; rose is kept for errors and
does not appear in the chrome.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
teal so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#E2E5E9](https://placehold.co/12x12/e2e5e9/e2e5e9.png) `#E2E5E9` | Frame, new tab, text on teal selections    |
| ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) `#F1F3F6` | Toolbar, menus                              |
| ![#CED1D4](https://placehold.co/12x12/ced1d4/ced1d4.png) `#CED1D4` | URL bar field, button hover, sidebar border |
| ![#2B2F35](https://placehold.co/12x12/2b2f35/2b2f35.png) `#2B2F35` | Body text                                   |
| ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` | Menu border                                 |
| ![#1D6778](https://placehold.co/12x12/1d6778/1d6778.png) `#1D6778` | Icons, inactive tab text                    |
| ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` | Focused tab text, focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-nebuladay.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart. To
keep it, upload the zip to addons.mozilla.org (self-distribution is enough)
and install the signed `.xpi` it hands back.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files from the profile's `chrome/` folder and restart.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a teal-tinted ![#CEDDDE](https://placehold.co/12x12/ceddde/ceddde.png) `#CEDDDE`
  row with a 3px teal rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
