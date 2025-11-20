return {
  {
    "git@github.com:hardyrafael17/norminette42.nvim.git",
    config = function()
      require("norminette").setup({
        runOnSave = true,
        maxErrorsToShow = 5,
        active = true,
      })

      -- Comando personalizado para rodar a norminette manualmente
      vim.api.nvim_create_user_command("Format42", function()
        vim.cmd("Norminette")
      end, {})
    end,
  },
}
