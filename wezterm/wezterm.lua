local wezterm = require("wezterm")



if wezterm.config_builder then
  Config = wezterm.config_builder()
end

local theme_name = "rose-pine-moon"
-- kanagawa-dragon | rose-pine-moon
local theme = require("themes." .. theme_name)

Config = {
  default_cursor_style = "SteadyBar",
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  check_for_updates = false,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = false,
  font_size = 12.0,
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }),
  enable_tab_bar = false,
  window_padding = {
    top = 0,
    right = 3,
    left = 3,
    bottom = 0,
  },
  background = {
    {
      source = {
        File = "C:/Users/evi/Pictures/wall/wall3.png",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 0.3,
      },
      width = "100%",
      height = "100%",
    },
    -- {
    --   source = {
    --     Color = "#282c35",
    --   },
    --   -- Color de fondo secundario debajo de la imagen (útil si la imagen es translúcida)
    --
    --   width = "100%",
    --   height = "100%",
    --   opacity = 0.55,
    --   -- Hace el fondo oscuro semi-transparente para que se vea la imagen
    -- },
  },
  max_fps = 240,
  enable_kitty_graphics = true,
  default_domain = "WSL:Debian",
  -- Reglas para detectar y convertir texto en enlaces clicables (URLs o correos)
  hyperlink_rules = {
    {
      regex = "\\((\\w+://\\S+)\\)",
      format = "$1",
      highlight = 1,
    },
    {
      regex = "\\[(\\w+://\\S+)\\]",
      format = "$1",
      highlight = 1,
    },
    {
      regex = "\\{(\\w+://\\S+)\\}",
      format = "$1",
      highlight = 1,
    },
    {
      regex = "<(\\w+://\\S+)>",
      format = "$1",
      highlight = 1,
    },
    {
      regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
      format = "$1",
      highlight = 1,
    },
    -- Detecta enlaces normales sin paréntesis ni envoltorios
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
      -- Detecta correos electrónicos y los convierte en enlaces `mailto:`
    },
  },

  -- Tema Rose Pine Moon - COLORES EXACTOS DE GOGH
  colors = theme
}
return Config
