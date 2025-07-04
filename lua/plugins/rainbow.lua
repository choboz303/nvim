return {
    "hiphish/rainbow-delimiters.nvim",
    event = { "BufReadPost" },
    -- event = "VeryLazy", -- 確実に treesitter 初期化後に読み込む
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        require("rainbow-delimiters.setup").setup({
            highlight = {
                "RainbowDelimiterRed",
                "RainbowDelimiterYellow",
                "RainbowDelimiterBlue",
                "RainbowDelimiterOrange",
                "RainbowDelimiterGreen",
                "RainbowDelimiterViolet",
                "RainbowDelimiterCyan",
            },
        })
    end,
}

