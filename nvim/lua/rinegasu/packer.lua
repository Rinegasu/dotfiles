-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Utilities
    use {
        'nvim-lua/plenary.nvim'
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
    }

    use {
        'nvim-telescope/telescope-file-browser.nvim'
    }

    -- Color scheme
    use({
        "catppuccin/nvim",
        as = "catppuccin",
        --config = function()
        --    vim.cmd('colorscheme catppuccin')
        --end
    })

    use({
        "dylanaraps/wal.vim",
    })

    use {
        'xiyaowong/transparent.nvim'
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
    }

    -- use neovim as a language server to inject LSP diagnostics, code actions and more via Lua
    use {
        'jose-elias-alvarez/null-ls.nvim'
    }

    -- Prettier plugin for Neovim's built-in LSP client
    use {
        'MunifTanjim/prettier.nvim'
    }

    -- for git
    use('tpope/vim-fugitive')

    -- snippets
    use {
        'L3MON4D3/LuaSnip'
    }
    -- vscode-like pictograms
    use {
        'onsails/lspkind-nvim'
    }

    -- cmp buffer source
    use {
        'hrsh7th/cmp-buffer'
    }

    -- nvim-cmp lsp source
    use {
        'hrsh7th/cmp-nvim-lsp'
    }

    -- completion
    use {
        'hrsh7th/nvim-cmp'
    }
    -- LSP
    use {
        'neovim/nvim-lspconfig',
    }

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- auto pairs
    use {
        'windwp/nvim-autopairs',
    }

    -- auto tags for html
    use {
        'windwp/nvim-ts-autotag',
    }

    -- file icons
    use {
        'kyazdani42/nvim-web-devicons',
    }

    -- LSP UI
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            require("lspsaga").setup({})
        end,
        requires = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" }
        }
    })

    use {
        'lewis6991/gitsigns.nvim'
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'MunifTanjim/nui.nvim',
    }

    use {
        'rcarriga/nvim-notify',
    }

    use {
        'folke/noice.nvim',
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    }

    --use {
    --   'akinsho/bufferline.nvim',
    --    tag = "*",
    --    requires = {
    --    'nvim-tree/nvim-web-devicons'
    --    },
    --}

    -- git blame & browser
    use {
        'dinhhuy258/git.nvim'
    }

    -- Mason
    use {
        'williamboman/mason.nvim'
    }
    use {
        'williamboman/mason-lspconfig.nvim'
    }
end)
