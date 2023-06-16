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
    transparent_background = true,
}

require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none",
                }
            }
        }
    },

    overrides = function(colors)
        local theme = colors.theme

        return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

            TelescopeTitle = { fg = theme.ui.special, bold = true },
        }
    end,
})

vim.cmd.colorscheme "kanagawa"

--status, colors = pcall(require, 'kanagawa')

--if (not status) then
 --   return
--end

--colors.setup {
--}

