return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            -- options = {
            --     theme = {
            --         normal = {
            --             a = { fg = "#002b36", bg = "#b58900", gui = "bold" },
            --             b = { fg = "#93a1a1", bg = "#fff" },
            --             c = { fg = "#93a1a1", bg = "#29444d" },
            --         },
            --         insert = {
            --             a = { fg = "#29444d", bg = "#859900", gui = "bold" },
            --         },
            --         visual = {
            --             a = { fg = "#29444d", bg = "#268bd2", gui = "bold" },
            --         },
            --     },
            -- },
        },
    },

    {
        "kdheepak/tabline.nvim",
        event = "BufWinEnter",
        opts = {},
    },
}
