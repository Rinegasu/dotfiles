vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-c>", "<Esc>")

--vim.keymap.set(
--    "n",
--    "<leader>pv",
--    require('telescope').extensions.file_browser.file_browser,
--    { noremap = true }
--)
