local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keymaps")
require("core.autocmds")

require("config.colorbuddy")

require("lazy").setup({
    spec = {
        { import = "plugins.neosolarized" },
        { import = "plugins.neotree" },
        { import = "plugins.etc" },
        { import = "plugins.autosave" },
        { import = "plugins.telescope" },
        { import = "plugins.lsp" },
        { import = "plugins.lspsaga" },
        { import = "plugins.cmp" },
        { import = "plugins.snippets" },
        { import = "plugins.treesitter" },
        { import = "plugins.rainbow" },
        { import = "plugins.alpha" },
        { import = "plugins.camelCase" },
        { import = "plugins.scrollbar" },
        { import = "plugins.noice" },
        { import = "plugins.lualine_tab" },
        { import = "plugins.hop" },
        { import = "plugins.indent-blankline" },
        { import = "plugins.nvim-surround" },
        { import = "plugins.session" },
        { import = "plugins.smartword" },
        { import = "plugins.winresizer" },
        { import = "plugins.tsxcomment" },
        { import = "plugins.sneak" },
        { import = "plugins.dap" },
    },
    checker = { enabled = true },
})
