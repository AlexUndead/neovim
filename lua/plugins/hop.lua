require'hop'.setup()
vim.api.nvim_set_keymap('n', 'f', "<cmd>HopChar1<cr>", { silent = true })
vim.api.nvim_set_keymap('n', 'F', "<cmd>HopWord<cr>", { silent = true })

