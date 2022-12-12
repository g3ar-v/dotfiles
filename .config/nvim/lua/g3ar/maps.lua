local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Save/Quit
keymap.set('n', ',w', ':w<Return>')
keymap.set('n', ',q', ':q<Return>')
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Create new line above
-- keymap.set('n', 'OO', 'O<Esc>j')

-- Create new line below
-- keymap.set('n', 'oo', 'o<Esc>k')

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
