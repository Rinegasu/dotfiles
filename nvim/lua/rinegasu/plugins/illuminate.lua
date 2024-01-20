return {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require('illuminate').configure {

        }
    end
}
