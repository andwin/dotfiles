local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dracula (base16)'
config.font = wezterm.font 'Fira Code'
config.font_size = 14.0

config.keys = {
  { key = 'LeftArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(1) },
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
