return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
        event = "VeryLazy",
    },

    {
        "kdheepak/tabline.nvim",
        opts = {},
        event = "BufWinEnter",
    },
}
