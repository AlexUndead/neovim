vim.g.mapleader = ","

-- NeoTree
vim.keymap.set('n', '<c-n>', ':NeoTreeFocusToggle<CR>')
vim.keymap.set('n', '<c-g>', ':NeoTreeReveal<CR>')

-- Buffers
vim.keymap.set('n', '<c-l>', ':bn<CR>')
vim.keymap.set('n', '<c-h>', ':bp<CR>')

-- BufferLine
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>g', ':BufferLineGoToBuffer ')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseOther<CR>')

-- sudo apt install xclip
-- sudo apt-get install vim-gtk3 -y
vim.keymap.set('v', '<c-c>', '"+y')


-- Leap
-- vim.keymap.set({'x', 'o'}, '<leader>m', '<Plug>(leap-forward-till)')
-- vim.keymap.set('n', '<leader>m', '<Plug>(leap-forward-till)')
