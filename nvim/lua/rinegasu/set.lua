vim.opt.nu = true
vim.opt.rnu = true

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_exec([[
    autocmd FileType html setlocal tabstop=2 shiftwidth=2
]], false)

vim.opt.incsearch = true

