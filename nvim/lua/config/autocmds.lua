-- ~/.config/nvim/lua/config/autocmds.lua

-- Configuração estilo 42 (C, header e Makefile)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "h", "make" },
  callback = function()
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
    vim.opt_local.softtabstop = 8
    vim.opt_local.expandtab = false
    vim.opt_local.list = true
    vim.opt_local.listchars = { tab = "↦ ", trail = "·" }
  end,
})

-- Atalho para rodar norminette nesses arquivos
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "h", "make" },
  callback = function()
    vim.keymap.set("n", "<leader>n", function()
      vim.cmd("!clear && norminette %")
    end, { buffer = true, desc = "Verificar Norminette (42)" })
  end,
})

