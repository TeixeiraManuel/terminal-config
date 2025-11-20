--- Indentação estilo 42
vim.opt.tabstop = 8 -- Cada tab ocupa 8 colunas
vim.opt.shiftwidth = 8 -- Nível de indentação = 8
vim.opt.softtabstop = 8 -- Tabs em edição também = 8
vim.opt.expandtab = false -- Usa TAB real, não espaços
vim.opt.list = true
vim.opt.listchars = {
  tab = "↦ ", -- símbolo para visualizar TAB
  trail = "·", -- espaços sobrando no fim da linha
}
vim.cmd([[
  autocmd FileType c,h setlocal noexpandtab
]])

-- Default options that are alway set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
