return {
    'windwp/nvim-ts-autotag',
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require('nvim-ts-autotag').setup {

        }
    end
}
