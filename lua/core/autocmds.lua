local autocmd = vim.api.nvim_create_autocmd
-- Don't auto commenting new lines
autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

vim.cmd("command! -nargs=* T split | wincmd j | resize 10 | terminal <args>")

vim.api.nvim_create_augroup("extra-whitespace", {})

autocmd({ "VimEnter", "WinEnter" }, {
    group = "extra-whitespace",
    pattern = { "*" },
    command = [[call matchadd('ExtraWhitespace', '[\u200B\u3000]')]],
})

local group = vim.api.nvim_create_augroup("MyCustomHighlights", { clear = true })

autocmd("ColorScheme", {
    group = group,
    callback = function()
        vim.api.nvim_set_hl(0, "ExtraWhitespace", {
            ctermbg = 202,
            ctermfg = 202,
            bg = "salmon",
        })
        vim.api.nvim_set_hl(0, "CursorColumn", {
            bg = "#29444d",
        })
    end,
})

autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd([[
            " cmp window
            highlight Floatborder guifg=none guibg=none
            highlight NormalFloat guifg=none guibg=none
        ]])
    end,
})
