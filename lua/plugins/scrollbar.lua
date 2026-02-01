return {
    "petertriho/nvim-scrollbar",
    event = { "VeryLazy" },
    opts = {
        -- handle = {
        -- color = "#0d6980",
        -- color = "#fdf6e3",
        -- },
        -- marks = {
        --     Search = { color = "#d33682" },
        --     Error = { color = "dc322f" },
        --     Warn = { color = "#b58900" },
        --     Info = { color = "#2aa198" },
        --     Hint = { color = "#268bd2" },
        --     Misc = { color = "#6c71c4" },
        -- },
        excluded_filetypes = {
            "TelescopeResults",
            -- "prompt",
            -- "TelescopePrompt",
            -- "noice",
            -- "LspsagaHover",
            -- "neo-tree",
        },
    },
}
