
local wezterm = require 'wezterm'


local config = {}


-- Color scheme
config.color_scheme = 'Gruber (base16)'


-- Line height / Cell width
config.line_height = 1.2666


-- No padding
config.window_padding = { 
	left = 0,
	right= 0,
	top = 0,
	bottom = 0,
}


-- Frame
config.window_frame = {
  font = require('wezterm').font('SF Pro', { weight = 500 }),
  font_size = 11,

  active_titlebar_bg = 'rgb(58, 58, 58)',
  inactive_titlebar_bg = 'rgb(51, 51, 51)',
}


-- Tab bar
config.use_fancy_tab_bar = true
config.colors = {
  tab_bar = {
    active_tab = {
      fg_color = 'rgb(190, 190, 190)',
      bg_color = 'rgb(42, 42, 42)'
    }
  }
}


-- Opaque background
config.window_background_opacity = 0.8
config.text_background_opacity = 1


-- Font
config.font = wezterm.font("Liga SFMono Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
config.font_size = 14

-- Blur (KDE)
config.wayland_window_background_blur = true

-- Cursor
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- Smooth scrolling
local act = wezterm.action
config.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'NONE',
    action = act.ScrollByLine(-4),
  },
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'NONE',
    action = act.ScrollByLine(4),
  },
}


return config
