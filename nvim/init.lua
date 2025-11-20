-- bootstrap lazy.nvim e sua configuração principal
require("config.lazy")

-- Configuração do tema tokyonight
require("tokyonight").setup({
  style = "night",
  transparent = true,
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})

-- Aplica o tema
vim.cmd("colorscheme tokyonight")
