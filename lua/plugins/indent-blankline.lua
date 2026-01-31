return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            highlight = {
                "CursorColumn",
                "Whitespace",
            },
            char = "",
        },
        whitespace = {
            highlight = {
                "CursorColumn",
                "Whitespace",
            },
            remove_blankline_trail = false,
        },
        scope = {
            enabled = false,
        },
    },
}
-- return {
--     "lukas-reineke/indent-blankline.nvim",
--     main = "ibl",
--     opts = {
--         indent = {
--             char = "▏",
--         },
--     },
-- }

-- return {
--     "lukas-reineke/indent-blankline.nvim",
--     dependencies = { "svrana/neosolarized.nvim" },
--     main = "ibl",
--     opts = function()
--         local cb = require("colorbuddy")
--         local Color = cb.Color
--         local colors = cb.colors
--         local Group = cb.Group
--
--         Color.new("MyCustomBg", "#29444d")
--         Group.new("IblColorA", nil, colors.MyCustomBg)
--
--         return {
--             indent = {
--                 highlight = { "IblColorA", "Normal" },
--                 char = "",
--             },
--             whitespace = {
--                 highlight = { "IblColorA", "Normal" },
--                 remove_blankline_trail = false,
--             },
--             scope = { enabled = false },
--         }
--     end,
-- }
