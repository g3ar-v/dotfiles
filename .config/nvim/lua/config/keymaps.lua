-- Keymaps are automaticalbashly loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("g3ar.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Create new line below
keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

-- Create new line above
keymap.set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Split line to next line
keymap.set("n", ",k", "a<CR><Esc>")

keymap.set("n", "<S-l>", "20zl") -- Scroll horizontally left
keymap.set("n", "<S-h>", "20zh") -- Scroll horizontally right

-- Split window
-- keymap.set("n", "<Leader>ss", ":split<Return><C-w>w")
-- keymap.set("n", "<Leader>sv", ":vsplit<Return><C-w>w")

-- Move window
-- keymap.set("n", "<Space>", "<C-w>w")
-- keymap.set("", "sh", "<C-w>h")
-- keymap.set("", "sk", "<C-w>k")
-- keymap.set("", "sj", "<C-w>j")
-- keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "10<C-w><")
keymap.set("n", "<C-w><right>", "10<C-w>>")
keymap.set("n", "<C-w><up>", "10<C-w>+")
keymap.set("n", "<C-w><down>", "10<C-w>-")
