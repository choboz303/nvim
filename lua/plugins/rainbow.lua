return {
    "hiphish/rainbow-delimiters.nvim",
    event = { "BufReadPost" },
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
