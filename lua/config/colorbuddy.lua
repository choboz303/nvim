local autocmd = vim.api.nvim_create_autocmd
local highlights = vim.api.nvim_create_augroup("MyCustomHighlights", { clear = true })

autocmd({ "ColorScheme", "VimEnter", "WinEnter" }, {
    group = highlights,
    callback = function()
        local ok, cb = pcall(require, "colorbuddy")
        if not ok then
            return
        end

        local Color = cb.Color
        local Group = cb.Group
        local colors = cb.colors
        local styles = cb.styles

        -- ===== Colors =====
        Color.new("custom0", "#29444d")
        Color.new("custom1", "#3d4d4d")
        Color.new("custom2", "#ffffff")
        Color.new("salmon", "#fa8072")

        -- ===== Core UI =====
        Group.new("CursorColumn", nil, colors.custom0)
        Group.new("CursorLine", nil, colors.custom0, styles.none)

        Group.new("WinBar", colors.base03, colors.base03, styles.none)
        Group.new("WinBarNC", colors.base03, colors.none, styles.none)

        Group.new("Whitespace", colors.custom1, nil)

        Group.new("FloatBorder", colors.none, colors.none)
        Group.new("NormalFloat", nil, colors.none)

        -- Extra whitespace (trailing)
        Group.new("ExtraWhitespace", nil, colors.salmon)

        Group.new("Visual", nil, colors.blue)

        -- ibl
        -- Group.new("@ibl.whitespace.char.1", colors.custom1, colors.custom0)
        -- Group.new("@ibl.whitespace.char.2", colors.custom1, colors.none)

        -- ===== Visual (blend 必須なので api) =====
        -- vim.api.nvim_set_hl(0, "Visual", {
        --     bg = colors.blue and colors.blue.gui or "#268bd2",
        --     blend = 20,
        -- })

        -- vim.api.nvim_create_autocmd({ "ModeChanged" }, {
        --     callback = function(args)
        --         local new = args.match and args.match:match(":(.+)") or vim.fn.mode()
        --
        --         if new:match("[vV]") then
        --             -- Visual
        --             vim.api.nvim_set_hl(0, "@ibl.whitespace.char.1", { bg = colors.blue.gui })
        --             vim.api.nvim_set_hl(0, "@ibl.whitespace.char.2", { bg = colors.blue.gui })
        --         else
        --             -- Normal
        --             vim.api.nvim_set_hl(0, "@ibl.whitespace.char.1", { bg = colors.custom0.gui })
        --             vim.api.nvim_set_hl(0, "@ibl.whitespace.char.2", { bg = "NONE" })
        --         end
        --     end,
        -- })
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
