-- return {
--     "goolord/alpha-nvim",
--     config = function()
--         require("alpha").setup(require("alpha.themes.dashboard").config)
--         local dashboard = require("alpha.themes.dashboard")
--         dashboard.config.layout[1].val = 10
--     end,
-- }
return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
        local dashboard = require("alpha.themes.dashboard")
        return dashboard.config
    end,
    config = function(_, opts)
        require("alpha").setup(opts)
        opts.layout[1].val = 10
    end,
}
