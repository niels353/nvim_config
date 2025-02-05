return {
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          markdown = { "prettierd" },
        }
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
      vim.keymap.set("n", "<space>fe", function() require("conform").format() end)
    end
  }
}
