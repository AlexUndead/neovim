require'lspconfig'.gopls.setup{
    cmd = {'gopls'}, -- путь к gopls, если не в $PATH
    on_attach = function(client, bufnr)
        -- Настройка клавиш для LSP
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

        -- Регистрация обработчика здесь
		local lsp = vim.lsp
		lsp.handlers["textDocument/definition"] = function(_, result, ctx, config)
			vim.notify("Handler for definition called", vim.log.levels.INFO)

			if not result or vim.tbl_isempty(result) then
				vim.notify("No result found", vim.log.levels.WARN)
				return
			end

			vim.notify("Jumping to location", vim.log.levels.INFO)
			vim.cmd("normal! m'")
			vim.lsp.util.jump_to_location(result[1])  -- Переход к определению
		end
        vim.lsp.set_log_level("debug")
    end,
}

