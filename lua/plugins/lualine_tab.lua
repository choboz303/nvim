return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
    },

    {
        "kdheepak/tabline.nvim",
        event = "BufWinEnter",
        opts = {},
    },
}
