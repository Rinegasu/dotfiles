return {
    'windwp/nvim-autopairs',
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require('nvim-autopairs').setup {
            disable_filetype = { 'TelescopePrompt', 'vim' }
        }
    end
}
