vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        local Color = require("colorbuddy").Color
        local Group = require("colorbuddy").Group
        local colors = require("colorbuddy").colors

        -- base02 を上書き（少し暗く）
        -- Color.new("base02", "#073642")
        -- Color.new("base02", "#0b3b44")
        Color.new("base02", "#29444d")

        -- 念のため cursor 系を再適用
        Group.new("CursorLine", nil, colors.base02)
    end,
})

-- Color.new("base03", "#002b36")
-- Color.new("base02", "#073642")
-- Color.new("base01", "#586e75")
-- Color.new("base00", "#657b83")
-- Color.new("base0", "#839496")
-- Color.new("base1", "#93a1a1")
-- Color.new("base2", "#eee8d5")
-- Color.new("base3", "#fdf6e3")
-- Color.new("yellow", "#b58900")
-- Color.new("orange", "#cb4b16")
-- Color.new("red", "#dc322f")
-- Color.new("magenta", "#d33682")
-- Color.new("violet", "#6c71c4")
-- Color.new("blue", "#268bd2")
-- Color.new("cyan", "#2aa198")
-- Color.new("green", "#719e07")
--
-- Group.new("Error", colors.red)
-- Group.new("Warning", colors.yellow)
-- Group.new("Information", colors.blue)
-- Group.new("Hint", colors.cyan)
