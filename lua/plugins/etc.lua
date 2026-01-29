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
    -- {
    --     "vim-scripts/ReplaceWithRegister",
    --     keys = {
    --         { "gr", mode = { "n", "x" }, desc = "Replace with register" },
    --     },
    -- },
    {
        "inkarkat/vim-ReplaceWithRegister",
        -- 特に追加の設定（config）がなくても、デフォルトで `gr` キーが有効になります
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
