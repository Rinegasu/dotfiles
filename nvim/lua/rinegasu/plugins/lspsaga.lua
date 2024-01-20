return {
    'nvimdev/lspsaga.nvim',
    event = "LspAttach",
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    keys = {
        { '<C-j>',      '<Cmd>Lspsaga diagnostic_jump_next<cr>' },
        { 'K',          '<Cmd>Lspsaga hover_doc<cr>' },
        { 'gd',         '<Cmd>Lspsaga finder<cr>' },
        { '<C-k>',      '<Cmd>Lspsaga signature_help<cr>',      'i' },
        { 'gp',         '<Cmd>Lspsaga peek_definition<cr>' },
        { 'n',          '<Cmd>Lspsaga rename<cr>' },
        { '<leader>ca', '<Cmd>Lspsaga code_action<cr>' },
    },
    config = function()
        require('lspsaga').setup {
            lightbulb = {
                enable = false,
            }
        }
    end
}
