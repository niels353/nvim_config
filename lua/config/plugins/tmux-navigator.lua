return {
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      vim.keymap.set("n", "C-h", ":TmuxNaviageLeft<CR>")
      vim.keymap.set("n", "C-j", ":TmuxNaviageDown<CR>")
      vim.keymap.set("n", "C-k", ":TmuxNaviageUp<CR>")
      vim.keymap.set("n", "C-l", ":TmuxNaviageRight<CR>")
    end
  }
}
