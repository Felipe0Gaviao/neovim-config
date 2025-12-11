require("config.lazy")

vim.diagnostic.config({
  virtual_text = true,
})

local set = vim.keymap.set

set("n", "<space><space>x", "<cmd>source %<CR>") -- quick souce current file for when i'm editing my config
set("n", "<space>w", ":w<CR>") -- quick save
set("n", "<space>q", ":q<CR>") -- quick close
set("n", "<space>x", ":x<CR>") -- quick save and close

local opt = vim.opt

opt.shiftwidth = 4
opt.number = true
opt.relativenumber = true
opt.clipboard = "unnamedplus"

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

