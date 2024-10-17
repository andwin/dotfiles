local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dracula (base16)'
config.font = wezterm.font 'Fira Code'
config.font_size = 15.0

config.dpi_by_screen = {
  ['Built-in Retina Display'] = 160,
}

config.keys = {
  { key = 'LeftArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(1) },
  { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'd', mods = 'CMD|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
}

config.mouse_bindings = {
  -- Change the default click behavior so that it only selects text and doesn't open hyperlinks
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'NONE',
    action = act.CompleteSelection 'ClipboardAndPrimarySelection',
  },

  -- and make CTRL-Click open hyperlinks
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = 'OpenLinkAtMouseCursor',
  },
}

return config
