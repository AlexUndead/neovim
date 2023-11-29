      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "💡", texthl = "DiagnosticSignHint"})

require("neo-tree").setup({
	filesystem = {
    		filtered_items = {
    		  visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
    		  hide_dotfiles = false,
    		},
	}
})
--vim.fn.sign_define("DiagnosticSignError", {text = "🚫", texthl = "DiagnosticSignError"})
--vim.fn.sign_define("DiagnosticSignWarn", {text = "!!", texthl = "DiagnosticSignWarn"})
--vim.fn.sign_define("DiagnosticSignInfo", {text = "!", texthl = "DiagnosticSignInfo"})
--vim.fn.sign_define("DiagnosticSignHint", {text = "🟡", texthl = "DiagnosticSignHint"})

--require("neo-tree").setup({
--	default_component_configs = {
--		icon = {
--			default = "*",
--			folder_closed = "🟨",
--			folder_open = "🟩"
--		}
--	}
--})
