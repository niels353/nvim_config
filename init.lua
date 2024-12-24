vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- keymaps
local set = vim.keymap.set

set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")

set("n", "<c-j>", ":wincmd j<CR>")
set("n", "<c-h>", ":wincmd h<CR>")
set("n", "<c-k>", ":wincmd k<CR>")
set("n", "<c-l>", ":wincmd l<CR>")

require("config.lazy")

-- options
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.clipboard = "unnamedplus"

-- Highlight when yanking (copying) text
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
