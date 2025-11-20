local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Esquema de cores (tema escuro/cyberpunk)
-- Usando um tema que combina com Cyberdream do Neovim
config.color_scheme = 'Cyberpunk'

-- Outras opções que combinam bem com Cyberdream:
-- config.color_scheme = 'Tokyo Night Storm'
-- config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'Nord'

-- Fonte com ligaduras
config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'Fira Code',
  'Cascadia Code',
}
config.font_size = 11.0
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }

-- Transparência e blur
config.window_background_opacity = 0.85

-- Blur para macOS
config.macos_window_background_blur = 20

-- Blur para Windows (usa acrylic effect)
config.win32_system_backdrop = 'Acrylic'

-- Imagem de fundo (substitua pelo caminho da sua imagem)
-- Exemplo: '/home/temanuel/.config/wezterm/background.jpg'
-- ou use: wezterm.home_dir .. '/.config/wezterm/background.jpg'
config.background = {
  {
    source = {
      File = wezterm.home_dir .. '/.config/wezterm/backgrounds/terminal.jpg',
    },
    -- Ajusta a aparência da imagem
    hsb = {
      brightness = 0.3,  -- Aumentado para teste (0.0 - 1.0)
      saturation = 1.2,   -- Aumenta cores (0.0 - 2.0)
      hue = 1.0,          -- Mantém as cores originais
    },
    -- Opacidade da imagem (0.0 = invisível, 1.0 = totalmente visível)
    opacity = 1,
    -- Redimensionamento
    width = "100%",
    height = "100%",
    horizontal_align = "Center",
    vertical_align = "Middle",
  },
}

-- Configurações de janela
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

-- Tab bar
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true

-- Cores personalizadas da tab bar
config.colors = {
  tab_bar = {
    background = '#0b0022',
    active_tab = {
      bg_color = '#2b2042',
      fg_color = '#c0c0c0',
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = '#1b1032',
      fg_color = '#808080',
    },
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
    },
    new_tab = {
      bg_color = '#1b1032',
      fg_color = '#808080',
    },
  },
}

-- Cursor
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 500

-- Desempenho
config.front_end = "WebGpu"
config.max_fps = 120

return config
