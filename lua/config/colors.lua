local autocmd = vim.api.nvim_create_autocmd
local highlights = vim.api.nvim_create_augroup("MyCustomHighlights", { clear = true })

autocmd({ "ColorScheme", "VimEnter", "WinEnter" }, {
    group = highlights,
    callback = function()
        vim.api.nvim_set_hl(0, "ExtraWhitespace", {
            bg = "salmon",
            ctermbg = 202,
            ctermfg = 202,
        })

        vim.api.nvim_set_hl(0, "CursorColumn", {
            bg = "#29444d",
        })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        local ok, cb = pcall(require, "colorbuddy")
        if ok then
            local Color = require("colorbuddy").Color
            local colors = cb.colors
            local Group = cb.Group
            local styles = cb.styles
            Group.new("WinBar", colors.base03, colors.base03, styles.none)
            Group.new("WinBarNC", colors.base03, colors.base02, styles.none)

            Color.new("custom0", "#29444d")
            Color.new("custom1", "#3c5c66")
            -- Color.new("custom1", "#395861")
            -- Color.new("custom1", "#32525c")

            Group.new("Whitespace", colors.custom1, nil)
            Group.new("CursorLine", nil, colors.custom0, styles.none)
            Group.new("@ibl.whitespace.char.1", colors.custom1, colors.custom0, styles.none)
        end
    end,
})

-- Trigger ColorScheme once on startup
vim.cmd("doautocmd ColorScheme")

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
