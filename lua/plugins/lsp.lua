local lsp_servers = {
    "pyright",
    "bashls",
    "lua_ls",
    "yamlls",
    "jsonls",
    "taplo",
    "rust_analyzer",
    "ts_ls",
    "html",
    "cssls",
}

local formatters = {
    "ruff",
    "stylua",
    "black",
    "isort",
    "prettier",
    -- "djlint",
}

local diagnostics = {
    "yamllint",
    "selene",
}

return {
    -- アイコン付き補完
    {
        "onsails/lspkind.nvim",
        event = "InsertEnter",
    },

    -- LSPサーバー管理
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "jay-babu/mason-null-ls.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = lsp_servers,
            })

            local lsp_config = require("lspconfig")
            for _, lsp_server in ipairs(lsp_servers) do
                lsp_config[lsp_server].setup({
                    root_dir = function(fname)
                        return lsp_config.util.find_git_ancestor(fname) or vim.fn.getcwd()
                    end,
                })
            end

            -- ======== フロートウィンドウ色設定 ========
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#073642", fg = "#ffffff" })
            vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#073642", fg = "#aaaaaa" })

            -- diagnostics ポップアップ
            vim.diagnostic.config({
                float = {
                    border = "rounded",
                    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
                },
            })

            -- hover
            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
                border = "rounded",
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
            })

            -- signature help
            vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
                border = "rounded",
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
            })
        end,
        cmd = "Mason",
    },

    -- null-ls (formatter / diagnostics) 管理
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({
                automatic_setup = true,
                ensure_installed = vim.tbl_flatten({ formatters, diagnostics }),
                handlers = {},
            })
        end,
        cmd = "Mason",
    },

    -- null-ls 設定
    {
        "nvimtools/none-ls.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            local null_ls = require("null-ls")

            local formatting_sources = {}
            for _, tool in ipairs(formatters) do
                table.insert(formatting_sources, null_ls.builtins.formatting[tool])
            end

            local diagnostics_sources = {}
            for _, tool in ipairs(diagnostics) do
                table.insert(diagnostics_sources, null_ls.builtins.diagnostics[tool])
            end

            null_ls.setup({
                diagnostics_format = "[#{m}] #{s} (#{c})",
                sources = vim.tbl_flatten({ formatting_sources, diagnostics_sources }),
            })
        end,
        event = { "BufReadPre", "BufNewFile" },
    },
}
