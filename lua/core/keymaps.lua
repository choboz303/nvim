local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>bd", ":bd<CR>", opts)

keymap("t", "<ESC>", "<C-\\><C-n>", opts)
keymap("n", "<ESC><ESC>", ":nohl<CR>", opts)
keymap("n", "s", "<NOP>", opts)

keymap("n", "J", "5j", opts)
keymap("v", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("v", "K", "5k", opts)

keymap("n", "U", "<C-r>", opts)

keymap("n", "<leader>so", ":source %<CR>", opts)
-- keymap("n", "<leader>nn", ":Neotree toggle<Return>", opts)
keymap("n", "<leader>o", ":ColorizerToggle<Return>", opts)

keymap("n", "<leader><leader>", ":HopChar2<CR>", opts)
keymap("n", "<leader>l", ":HopLine<CR>", opts)
keymap("n", "<leader>w", ":HopWord<CR>", opts)

keymap("n", "<C-n>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprevious<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "sv", "<C-w>v", opts)
keymap("n", "ss", "<C-w>s", opts)
keymap("n", "sx", ":close<CR>", opts)

keymap("n", "gn", ":tabnew<CR>", opts)
keymap("n", "gx", ":tabclose<CR>", opts)
keymap("n", "gl", ":tabn<CR>", opts)
keymap("n", "gh", ":tabp<CR>", opts)

keymap("n", "<leader>T", ":T<CR>", opts)
keymap("n", "<leader>tt", ":term<CR>", opts)

-- LSP関連のキーマッピングと設定
-- 標準的な操作
-- keymap("n", "<leader>w", ":w<cr>", { noremap = true, silent = true, desc = "Save" })
-- keymap("n", "<leader>q", ":q<cr>", { noremap = true, silent = true, desc = "Quit" })
keymap("n", "<leader>q", ":qall<cr>", { noremap = true, silent = true, desc = "Quit all" })

-- ウィンドウ操作
keymap("n", "<leader>|", ":vsplit<cr>", { noremap = true, silent = true, desc = "Vertical Split" })
keymap("n", "<leader>-", ":split<cr>", { noremap = true, silent = true, desc = "Horizontal Split" })

-- Plugin Manager Lazy.nvim
keymap("n", "<leader>Ls", ":Lazy sync<cr>", { noremap = true, silent = true, desc = "Lazy sync" })
keymap("n", "<leader>Lp", ":Lazy profile<cr>", { noremap = true, silent = true, desc = "Lazy profile" })

-- バッファ移動
keymap("n", "<C-n>", ":bnext<cr>", { noremap = true, silent = true, desc = "Next Buffer" })
keymap("n", "<C-p>", ":bprevious<cr>", { noremap = true, silent = true, desc = "Previous Buffer" })

-- NeoTree
keymap("n", "nn", ":Neotree toggle<cr>", { noremap = true, silent = true, desc = "Neotree Toggle" })
-- keymap(
--     "n",
--     "<leader>no",
--     ":Neotree reveal<cr>:Neotree ~/dotfiles/nvim/<cr>",
--     { noremap = true, silent = true, desc = "Neotree reveal" }
-- )

-- 検索ハイライト解除
keymap("n", "<ESC>", ":noh<cr>", { noremap = true, silent = true, desc = "Reset Highlight Search" })
