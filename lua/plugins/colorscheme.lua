return {
    "svrana/neosolarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("neosolarized").setup({
            comment_italics = true,
            background_set = false,
        })
        vim.cmd.colorscheme("neosolarized")
    end,
    dependencies = {
        "tjdevries/colorbuddy.nvim",
    },
}

-- return {
--     "bluz71/vim-moonfly-colors",
--     name = "moonfly",
--     lazy = false,
--     priority = 1000,
-- }

-- return {
--     "AlexvZyl/nordic.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("nordic").load()
--     end,
-- }

-- Lua

-- return {
--     "olivercederborg/poimandres.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("poimandres").setup({
--             -- leave this setup function empty for default config
--             -- or refer to the configuration section
--             -- for configuration options
--         })
--     end,
--
--     -- optionally set the colorscheme within lazy config
--     init = function()
--         vim.cmd("colorscheme poimandres")
--     end,
-- }
