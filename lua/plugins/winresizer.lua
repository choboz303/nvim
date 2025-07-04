return {
    "simeji/winresizer",
    keys = {
        { "<Leader>w", "<cmd>WinResizerStartResize<CR>", desc = "WinResizer" },
    },
    init = function()
        vim.g.winresizer_vert_resize = 1
        vim.g.winresizer_horiz_resize = 1
    end,
}
