return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            messages = {
                view = "notify",
            },
        },
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#002b36",
            fps = 30,
            timeout = 1000,
            render = "compact",
            stages = "static",
        },
    },
}

-- history
-- :Notifications
