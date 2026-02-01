local autocmd = vim.api.nvim_create_autocmd

local general = vim.api.nvim_create_augroup("General", { clear = true })
local whitespace = vim.api.nvim_create_augroup("ExtraWhitespace", { clear = true })
local highlights = vim.api.nvim_create_augroup("MyCustomHighlights", { clear = true })
-- local Color = require("colorbuddy").Color
-- local colors = require("colorbuddy").color

-- Don't auto comment new lines
autocmd("BufEnter", {
    group = general,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions:remove({ "c", "r", "o" })
    end,
})

-- Format on save (LSP)
autocmd("BufWritePre", {
    group = general,
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

-- Custom :T command
vim.api.nvim_create_user_command("T", function(opts)
    vim.cmd("split | wincmd j | resize 10 | terminal " .. opts.args)
end, { nargs = "*" })

-- Extra whitespace matcher
autocmd({ "VimEnter", "WinEnter" }, {
    group = whitespace,
    pattern = "*",
    callback = function()
        vim.fn.matchadd("ExtraWhitespace", "[\\u200B\\u3000]")
    end,
})

-- Highlights
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
            local colors = cb.colors
            local Group = cb.Group
            local styles = cb.styles
            Group.new("WinBar", colors.base03, colors.base03, styles.none)
            Group.new("WinBarNC", colors.base03, colors.base02, styles.none)
        end
    end,
})

-- Trigger ColorScheme once on startup
vim.cmd("doautocmd ColorScheme")
