local status, colors = pcall(require, 'catppuccin')

if (not status) then
    return
end

colors.setup {
    integrations = {
        lsp_saga = true,
        telescope = true,
        nvimtree = true,
        treesitter = true,
        cmp = true,
        markdown = true,
    },
    -- transparent_background = vim.g.transparent_enabled,
}

vim.cmd.colorscheme "catppuccin"

--status, colors = pcall(require, 'kanagawa')

--if (not status) then
 --   return
--end

--colors.setup {
--}

