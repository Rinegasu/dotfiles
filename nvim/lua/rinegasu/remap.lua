
vim.g.mapleader = " "

vim.keymap.set(
    "n",
    "<leader>pv",
    require('telescope').extensions.file_browser.file_browser,
    { noremap = true }
)
