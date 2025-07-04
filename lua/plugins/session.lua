return {
    "rmagatti/auto-session",
    lazy = false,
    init = function()
        vim.o.sessionoptions = vim.o.sessionoptions .. ",localoptions"
    end,
    opts = {
        log_level = "info",
        auto_save = true,
        auto_restore = true,
        auto_create = true,
        suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        pre_save_cmds = {
            function()
                vim.cmd("Neotree close")
            end,
        },
        post_restore_cmds = {
            function()
                vim.cmd("Neotree show")
            end,
        },
    },
}
