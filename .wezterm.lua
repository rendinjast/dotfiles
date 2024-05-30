-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.colors = {
	background = "#000000",
	foreground = "#8e95b4",
	cursor_bg = "#ff6d67",
	cursor_fg = "#111111",
	selection_bg = "#ff6d67",
	selection_fg = "#111111",
	ansi = {
		"#000000",
		"#e75a5a",
		"#a9efa3",
		"#fd9200",
		"#4c71f6",
		"#e382bc",
		"#70e3eb",
		"#ffffff",
	},
	brights = {
		"#676767",
		"#ff6d67",
		"#5ff967",
		"#feb667",
		"#6871ff",
		"#ff76ff",
		"#5ffdff",
		"#fffeff",
	},
	tab_bar = {
		background = "#000000",
	},
}
config.use_fancy_tab_bar = false
-- config.window_background_opacity = 0.88
-- config.macos_window_background_blur = 60
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "MACOS_FORCE_ENABLE_SHADOW|INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
	left = 2,
	right = 2,
	top = 12,
	bottom = 0,
}

----------------------- tab bar

-- config.font
config.font = wezterm.font_with_fallback({
	"Dank Mono",
	"Vazir Code Extra Height",
})
config.font_size = 16
config.bidi_enabled = true
config.bidi_direction = "LeftToRight"
config.line_height = 1

config.show_tabs_in_tab_bar = false
config.native_macos_fullscreen_mode = true
config.show_new_tab_button_in_tab_bar = false
config.default_cursor_style = "BlinkingBar"

-- and finally, return the configuration to wezterm
return config
