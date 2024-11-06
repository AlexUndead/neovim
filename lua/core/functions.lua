function ReplaceWord()
    local word = vim.fn.expand("<cword>")
    return '%s/' .. word .. '/'
end
