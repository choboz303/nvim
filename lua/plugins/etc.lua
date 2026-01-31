return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
    {
        "norcalli/nvim-colorizer.lua",
        keys = {
            { "<leader>o", ":ColorizerToggle<cr>", mode = { "n" }, silent = true },
        },
    },
    {
        "karb94/neoscroll.nvim",
        event = "WinScrolled",
        opts = {},
    },
    {
        "keaising/im-select.nvim",
        event = "InsertEnter",
        opts = {},
    },
    {
        "mattn/emmet-vim",
        ft = { "html", "css", "javascriptreact", "typescriptreact" },
    },
    {
        "inkarkat/vim-ReplaceWithRegister",
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = {},
        event = { "BufReadPre", "BufNewFile" },
    },
    -- {
    --     "echasnovski/mini.indentscope",
    --     opts = {
    --         symbol = "▏",
    --     },
    --     event = "BufRead",
    -- },
}
