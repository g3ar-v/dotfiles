-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "88"
vim.opt.mouse = ""
vim.opt.cmdheight = 1
vim.opt.textwidth = 88
vim.opt.winblend = 0
vim.g.mapleader = ","

-- Vim global config
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1

vim.cmd([[let &t_Cs = "\e[4:4m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])
