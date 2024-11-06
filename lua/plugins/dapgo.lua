local dap, dapui = require("dap"), require("dapui")

dap.adapters.go = {
    type = 'server',
    port = 38697, -- или любой другой свободный порт
    executable = {
        command = 'dlv',
        args = {'dap', '--accept-multiclient', '--log'},
    },
}

dap.configurations.go = {
    {
        type = 'go',
        name = 'Run Tests',
        request = 'launch',
        mode = 'test',
        program = "${fileDirname}", -- запустить тесты во всей папке
    },
}

dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.api.nvim_create_user_command('DapuiOpen', dapui.open, {})
vim.api.nvim_create_user_command('DapuiClose', dapui.close, {})

local dap_go = require('dap-go')
dap_go.setup({})

--require('dap-go').setup()

--dap.adapters.go = {
--	type = 'go',
--	executable = 'dlv',
--}
-- dap.configurations.go = {
-- 	type = 'go',
-- 	request = 'launch',
-- 	name = 'Launch',
-- 	program = '${file}',
-- 	adapter = dap.adapters.go,
-- }

-- Опционально: настройте Delve
-- dap.adapters.go = {
--   type = 'server',
--   port = 38697,  -- или другой порт, если нужно
--   executable = {
--     command = 'dlv',
--     args = { 'dap', '-l', '127.0.0.1:38697' },
--   },
-- }
-- 
-- dap.configurations.go = {
--   {
--     type = 'go',
--     name = 'Debug',
--     request = 'launch',
--     program = '${fileDirname}/internal/domain/rule_service_test.go',  -- или другой путь к исполняемому файлу
--   },
-- }
-- 
-- 
