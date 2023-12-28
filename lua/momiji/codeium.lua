vim.g.codeium_disable = false

vim.keymap.set('i', '<c-y>', function()
    return vim.fn['codeium#Accept']()
end, { expr = true })
vim.keymap.set('i', '<c-n>', function()
    return vim.fn['codeium#CycleCompletions'](1)
end, { expr = true })
vim.keymap.set('i', '<c-p>', function()
    return vim.fn['codeium#CycleCompletions'](-1)
end, { expr = true })
vim.keymap.set('i', '<c-x>', function()
    return vim.fn['codeium#Clear']()
end, { expr = true })