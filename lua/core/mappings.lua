vim.g.mapleader = ","

-- Netrw
-- vim.keymap.set('n', '<c-n>', ':Lexplore<CR>')

-- Buffers
--vim.keymap.set('n', '<c-l>', ':bn<CR>')
--vim.keymap.set('n', '<c-h>', ':bp<CR>')

-- NeoTree
vim.keymap.set('n', '<c-n>', ':NeoTreeFocusToggle<CR>')
vim.keymap.set('n', '<c-g>', ':NeoTreeReveal<CR>')

-- BufferLine
-- vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
-- vim.keymap.set('n', '<leader>g', ':BufferLineGoToBuffer ')
-- vim.keymap.set('n', '<leader>X', ':BufferLineCloseOther<CR>')
-- vim.keymap.set('n', '<leader>s', ':BufferLineMoveNext<CR>')
-- vim.keymap.set('n', '<leader>a', ':BufferLineMovePrev<CR>')
-- vim.keymap.set('n', '<c-l>', ':BufferLineCycleNext<CR>')
-- vim.keymap.set('n', '<c-h>', ':BufferLineCyclePrev<CR>')

-- Newtr
vim.keymap.set('n', '<c-l>', ':tabnext<CR>')
vim.keymap.set('n', '<c-h>', ':tabprevious<CR>')
vim.keymap.set('n', '<leader>1', '1gt<CR>')
vim.keymap.set('n', '<leader>2', '2gt<CR>')
vim.keymap.set('n', '<leader>3', '3gt<CR>')
vim.keymap.set('n', '<leader>4', '4gt<CR>')
vim.keymap.set('n', '<leader>5', '5gt<CR>')
vim.keymap.set('n', '<leader>6', '6gt<CR>')
vim.keymap.set('n', '<leader>7', '7gt<CR>')
vim.keymap.set('n', '<leader>8', '8gt<CR>')
vim.keymap.set('n', '<leader>9', '9gt<CR>')
vim.keymap.set('n', '<leader>0', ':tablast<CR>')
vim.keymap.set('n', '<leader>X', ':tabonly<CR>')
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tm', ':tabmove ')

-- sudo apt install xclip
-- sudo apt install vim-gtk3 -y
vim.keymap.set('v', '<c-c>', '"+y')

-- Coverage
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>CoverageLoad<cr><cmd>CoverageToggle<cr>', {})

-- Rename
vim.api.nvim_set_keymap('n', '<leader>R', ':%s//', {})

-- DAP
vim.keymap.set('n', '<leader>db', ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<leader>dc', ':DapContinue<CR>')


-- Leap
-- vim.keymap.set({'x', 'o'}, '<leader>f', '<Plug>(leap-forward-till)')
-- vim.keymap.set('n', '<leader>d', '<Plug>(leap-forward-to)')
