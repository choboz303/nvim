return {
    "justinmk/vim-sneak",
    init = function()
        -- Sneakオプションをここで設定（vim.g使用）
        vim.g["sneak#label"] = 1
        vim.g["sneak#use_ic_scs"] = 1 -- 大文字小文字無視（必要に応じて）
        vim.g["sneak#map_repeat"] = 0 -- ; / , を使わず、カスタムにする
        vim.api.nvim_set_hl(0, "Sneak", { fg = "#ffffff", bg = "#ff5f5f", bold = true })
    end,
    config = function()
        local keymap = vim.keymap.set

        -- ; を前方ジャンプのリピート（Sneak_;）
        -- keymap("n", ";", "<Plug>Sneak_;", { noremap = true, silent = true })
        -- ' を後方ジャンプのリピート（Sneak_,）
        keymap("n", "'", "<Plug>Sneak_,", { noremap = true, silent = true })

        keymap("n", "f", "<Plug>Sneak_f", {})
        keymap("n", "F", "<Plug>Sneak_F", {})
        -- keymap("n", "t", "<Plug>Sneak_t", {})
        -- keymap("n", "T", "<Plug>Sneak_T", {})
    end,
}
