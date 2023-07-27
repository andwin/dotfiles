local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dracula'
config.font = wezterm.font 'Fira Code'
config.font_size = 14.0

config.keys = {
  { key = 'LeftArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(1) },
}

return config
