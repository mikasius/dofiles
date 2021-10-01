local wezterm = require 'wezterm';

return {
	-- Disable tab bar.
	enable_tab_bar = false,

	-- Window settings.
	window_background_opacity = 0.95,
	-- window_padding = {
		-- left = 5,
		-- right = 5,
		-- top = 5,
		-- bottom = 5,
	-- },

	-- Font config.
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 10,

	-- Color scheme.
	color_scheme = "nord",

	-- System utility.
	term = "wezterm",

	-- Working dir.
	default_cwd = "~/projects",

	-- Run usefull programs.
	default_prog = {"/usr/local/bin/fish", "-l"},
}
