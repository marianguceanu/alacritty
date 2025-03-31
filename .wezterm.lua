local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.color_scheme = 'NvimDark'
config.colors = {
	background = "#14161b"
}

config.font =
    wezterm.font('IosevkaTerm NF', { weight = 'Regular' })
config.font_size = 16.5
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 0,
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false

config.default_prog = { "C:\\Program Files\\WindowsApps\\Microsoft.PowerShell_7.5.0.0_x64__8wekyb3d8bbwe\\pwsh.exe" }

config.keys = {

	{
		key = "x",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},

	-- Switch to pane 1-9 (like tmux Ctrl-1 to Ctrl-9)
	{ key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "CTRL", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "CTRL", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "CTRL", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "CTRL", action = wezterm.action.ActivateTab(8) },
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab "CurrentPaneDomain",
	},
}


-- and finally, return the configuration to wezterm
return config
