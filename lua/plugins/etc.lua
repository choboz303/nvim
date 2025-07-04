return {
    {
        "windwp/nvim-autopairs",
        opts = {},
        event = "InsertEnter",
    },
    {
        "norcalli/nvim-colorizer.lua",
        keys = {
            { "<leader>o", ":ColorizerToggle<cr>", mode = { "n" }, silent = true },
        },
    },
    {
        "karb94/neoscroll.nvim",
        opts = {},
    },
    {
        "keaising/im-select.nvim",
        opts = {},
    },
    {
        "mattn/emmet-vim",
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "echasnovski/mini.indentscope",
        opts = {
            symbol = "▏",
        },
        event = "BufRead",
    },
}
