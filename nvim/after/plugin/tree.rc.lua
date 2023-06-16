local status, nvimtree = pcall(require, 'nvim-tree');

if ( status) then
    return;
end

nvimtree.setup {
    view = {
        width = {
            padding = 5,
            max = 40,
        },
    },
    renderer = {
        group_empty = true,
    },
}

local opts = {
    noremap = true,
    silent = true,
}


--vim.keymap.set('n', '<leader>ot', '<Cmd>NvimTreeToggle<cr>', opts)
--vim.keymap.set('n', '<leader>ft', '<Cmd>NvimTreeFindFile<cr>', opts)

