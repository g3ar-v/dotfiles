local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Save/Quit
keymap.set('n', '<Leader>q', ':q<Return>')
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" })
keymap.set('n', '<Leader>w', ':w<Return>')
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Edit and reload nvim config file quickly
keymap.set("n", "<leader>ev", "<cmd>tabnew $MYVIMRC <bar> tcd %:h<cr>", {
  silent = true,
  desc = "open init.lua",
})

-- Vista tags
keymap.set("n", "<leader>v", "<cmd>Vista<cr>", { silent = true })
-- keymap.set("n", "<leader>sv", function()
--   vim.cmd([[
--       update $MYVIMRC
--       source $MYVIMRC
--     ]])
--   vim.notify("Nvim config successfully reloaded!", vim.log.levels.INFO, { title = "nvim-config" })
-- end, {
--   silent = true,
--   desc = "reload init.lua",
-- })


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

-- Go to start or end of line easier
keymap.set({ "n", "x" }, "H", "^")
keymap.set({ "n", "x" }, "L", "g_")

keymap.set('n', '<C-l>', '20zl') -- Scroll horizontally left
keymap.set('n', '<C-h>', '20zh') -- Scroll horizontally right


-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Buffer next and previous
keymap.set('n', ',n', ':bn<Return>')
keymap.set('n', ',p', ':bp<Return>')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
