-- NebulaDay for WezTerm, part of cosmic-nebuladay-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("nebuladay")
-- To follow COSMIC's Dark / Light toggle with the Nebula half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "nebula" or "nebuladay")

return {
  foreground = "#2B2F35",
  background = "#E2E5E9",

  cursor_bg = "#186A61",
  cursor_fg = "#E2E5E9",
  cursor_border = "#186A61",
  compose_cursor = "#914C27",

  selection_bg = "#CED1D4",
  selection_fg = "none",

  scrollbar_thumb = "#CED1D4",
  split = "#CED1D4",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#D8DBDF", "#A8243B", "#1D6778", "#604686", "#186A61", "#914C27", "#1D6778", "#4A5059" },
  brights = { "#858EA2", "#861D2F", "#164E5B", "#523C72", "#12514A", "#713B1E", "#603598", "#1F2329" },

  copy_mode_active_highlight_bg = { Color = "#186A61" },
  copy_mode_active_highlight_fg = { Color = "#E2E5E9" },
  copy_mode_inactive_highlight_bg = { Color = "#604686" },
  copy_mode_inactive_highlight_fg = { Color = "#E2E5E9" },

  quick_select_label_bg = { Color = "#914C27" },
  quick_select_label_fg = { Color = "#E2E5E9" },
  quick_select_match_bg = { Color = "#604686" },
  quick_select_match_fg = { Color = "#E2E5E9" },

  tab_bar = {
    background = "#E2E5E9",
    active_tab = { bg_color = "#186A61", fg_color = "#E2E5E9", intensity = "Bold" },
    inactive_tab = { bg_color = "#F1F3F6", fg_color = "#31469B" },
    inactive_tab_hover = { bg_color = "#D8DBDF", fg_color = "#2B2F35" },
    new_tab = { bg_color = "#E2E5E9", fg_color = "#31469B" },
    new_tab_hover = { bg_color = "#D8DBDF", fg_color = "#186A61" },
  },
}
