-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'
config.font = wezterm.font 'Fira Code'
config.font_size = 14.0

config.keys = {
  { key = 'LeftArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL|CMD', action = act.MoveTabRelative(1) },
}

-- and finally, return the configuration to wezterm
return config

