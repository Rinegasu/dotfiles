local status, transparent_background = pcall(require, 'transparent')

if (not status) then
    return
end

transparent_background.setup {
    extra_groups = {
        "NvimTreeNormal",
    },
}
