return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        indent = {
            highlight = { "CursorColumn", "Whitespace" },
            char = "",
        },
        whitespace = {
            highlight = { "CursorColumn", "Whitespace" },
            remove_blankline_trail = false,
        },
        scope = {
            enabled = false,
        },
    },
}
