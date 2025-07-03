return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Find files",
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Live grep",
        },
        {
            "<leader>gs",
            function()
                require("telescope.builtin").git_status()
            end,
            desc = "Git status",
        },
        {
            "<leader>gl",
            function()
                require("telescope.builtin").git_commits()
            end,
            desc = "Git commits",
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Buffers",
        },
        {
            "<leader>fo",
            function()
                require("telescope.builtin").oldfiles()
            end,
            desc = "Recent files",
        },
        { "<leader>fn", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Find Neovim config" },
        {
            "<leader>fc",
            function()
                require("telescope.builtin").colorscheme()
            end,
            desc = "Colorscheme",
        },
        {
            "<leader>fv",
            function()
                require("telescope.builtin").vim_options()
            end,
            desc = "Vim options",
        },
        {
            "<leader>fk",
            function()
                require("telescope.builtin").keymaps()
            end,
            desc = "Keymaps",
        },
        {
            "<leader>fr",
            function()
                require("telescope.builtin").registers()
            end,
            desc = "Registers",
        },
        {
            "<leader>fh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Help tags",
        },
    },
}

