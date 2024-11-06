-- Установка обработчика для LSP
local function on_attach(client, bufnr)
    local opts = { noremap=true, silent=true }
    -- Настройка клавиш для взаимодействия с LSP
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

-- Запуск LSP
local lsp = vim.lsp
lsp.start({
    name = "gopls",
    cmd = {"gopls"},
    on_attach = on_attach,
    root_dir = vim.loop.cwd(),  -- Устанавливает корневую папку проекта
})

