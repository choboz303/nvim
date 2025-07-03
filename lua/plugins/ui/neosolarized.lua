return {
    "svrana/neosolarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme neosolarized]])
    end,
    dependencies = {
        "tjdevries/colorbuddy.nvim",
    },
}

