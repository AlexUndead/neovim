local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker"
		},
		enable = False
	},
	{"neovim/nvim-lspconfig"},
	{"nvim-treesitter/nvim-treesitter"},
	{"ellisonleao/gruvbox.nvim"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-buffer"},
	{"hrsh7th/cmp-path"},
	{"hrsh7th/cmp-cmdline"},
	{"hrsh7th/nvim-cmp"},
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.4',
		dependencies = {"nvim-lua/plenary.nvim"}
	},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{'phaazon/hop.nvim'},
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-go",
		},
	},
	{"andythigpen/nvim-coverage"},
	{
		"leoluz/nvim-dap-go",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
	},
	{"terrortylor/nvim-comment"},
	{"sindrets/diffview.nvim"},
	-- {
	--     "Exafunction/codeium.nvim",
	-- 	dependencies = {
	-- 			"nvim-lua/plenary.nvim",
	-- 			"hrsh7th/nvim-cmp",
	-- 	},
	--     },
})
