return {
    "nvimdev/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({
            symbol_in_winbar = {
                separator = "  ",
            },
            lightbulb = {
                -- enable = true,
                -- sign = true,
                virtual_text = false,
                -- debounce = 10,
                -- sign_priority = 40,
            },
        })
    end,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    event = "LspAttach",

    -- event = { "BufRead", "BufNewFile" },
}
