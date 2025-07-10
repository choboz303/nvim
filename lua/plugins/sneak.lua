return {
    "justinmk/vim-sneak",
    init = function()
        -- Sneakオプションをここで設定（vim.g使用）
        vim.g["sneak#label"] = 1      -- ジャンプにラベル表示（a,b,c,...）
        vim.g["sneak#use_ic_scs"] = 1 -- 大文字小文字無視（必要に応じて）
        vim.g["sneak#map_repeat"] = 0 -- ; / , を使わず、カスタムにする
    end,
    config = function()
        local keymap = vim.keymap.set
        local opts = { noremap = true, silent = true }
        -- keymap({ "n", "x", "o" }, "<Leader>s", "<Plug>Sneak_s", opts)
        -- keymap({ "n", "x", "o" }, "<Leader>S", "<Plug>Sneak_S", opts)

        -- Sneakのリピートジャンプを `'` と `"` に変更
        keymap("n", "'", "<Plug>Sneak_;", opts)
        keymap("n", '"', "<Plug>Sneak_,", opts)
        keymap("x", "'", "<Plug>Sneak_;", opts)
        keymap("x", '"', "<Plug>Sneak_,", opts)
        keymap("o", "'", "<Plug>Sneak_;", opts)
        keymap("o", '"', "<Plug>Sneak_,", opts)

        -- さらに必要に応じて f / t を Sneak に置き換えたい場合
        keymap("n", "f", "<Plug>Sneak_f", {})
        keymap("n", "F", "<Plug>Sneak_F", {})
        keymap("n", "t", "<Plug>Sneak_t", {})
        keymap("n", "T", "<Plug>Sneak_T", {})
    end,
}
