local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

vim.api.nvim_create_augroup("extra-whitespace", {})
autocmd({ "VimEnter", "WinEnter" }, {
    group = "extra-whitespace",
    pattern = { "*" },
    command = [[call matchadd('ExtraWhitespace', '[\u200B\u3000]')]],
})
autocmd({ "ColorScheme" }, {
    group = "extra-whitespace",
    pattern = { "*" },
    command = [[highlight default ExtraWhitespace ctermbg=202 ctermfg=202 guibg=salmon]],
})

autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd([[
            highlight @ibl.indent.char.1 guibg=#073642
            highlight @ibl.whitespace.char.1 guibg=#073642
            highlight Whitespace guifg=#073642

            " lspsaga
            highlight WinBar guibg=#073642
            highlight WinBarNC guibg=#073642]])
    end,
})

-- autocmd({ "InsertLeave" }, {
--     pattern = { "*" },
--     callback = function()
--         vim.lsp.buf.format({ async = true })
--     end,
-- })

-- | base03  | #002b36   | ダーク背景（最も濃い色）  |
-- | base02  | #073642   | 背景（少し明るい）     |
-- | base01  | #586e75   | コメントなど（淡い文字色） |
-- | base00  | #657b83   | 警告文字など        |
-- | base0   | #839496   | 通常テキスト        |
-- | base1   | #93a1a1   | 強調テキスト        |
-- | base2   | #eee8d5   | ライト背景（明るい背景色） |
-- | base3   | #fdf6e3   | 最も明るい背景色      |
-- | yellow  | #b58900   | 警告・注意         |
-- | orange  | #cb4b16   | エラーなど         |
-- | red     | #dc322f   | 強いエラー         |
-- | magenta | #d33682   | 強調色           |
-- | violet  | #6c71c4   | 補助強調色         |
-- | blue    | #268bd2   | リンク、キーワード     |
-- | cyan    | #2aa198   | 補助キーワード、タイプ   |
-- | green   | #859900   | 成功、情報         |
