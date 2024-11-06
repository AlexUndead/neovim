require("neotest").setup{
	adapters = {
          	require("neotest-go")({
			recursive_run = true,
			args = {
				"-v",
				"-race",
				"-count=1",
				"-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
			},
		}),
        },
}
vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>Neotest run<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ts', '<cmd>Neotest summary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>Neotest output<CR>', { noremap = true, silent = true })

