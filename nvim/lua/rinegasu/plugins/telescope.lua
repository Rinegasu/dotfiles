return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    keys = {
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
    },
    config = function()
        require('telescope').setup {
            file_ignore_patterns = {
                "node_modules"
            },
            extensions = {
                file_browser = {
                    theme = 'dropdown',
                    -- disables netrw and replaces with telescope-file-browser
                    hijack_netrw = true,
                }
            },
        };
    end,
}
