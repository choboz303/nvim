return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            "<Leader>nn",
            "<cmd>Neotree toggle<CR>",
            mode = "n",
            desc = "Neotree Toggle",
        },
    },

    opts = {
        window = {
            position = "left",
            width = 30,
        },
        event_handlers = {
            {
                event = "file_open_requested",
                handler = function()
                    require("neo-tree.command").execute({ action = "open" })
                end,
            },
        },
    },
    cmd = "Neotree",
}
