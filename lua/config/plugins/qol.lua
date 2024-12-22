return {
  {
    'mcauley-penney/visual-whitespace.nvim',
    config = true
  },
  {
    "atiladefreitas/dooing",
    config = function()
      require("dooing").setup({
        -- your custom config here (optional)
      })
    end,
  },
}
