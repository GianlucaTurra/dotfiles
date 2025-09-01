local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 12
config.font = wezterm.font("Sauce Code Pro Nerd Font")
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.9
config.enable_tab_bar = false

return config
