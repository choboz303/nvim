local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function filename()
    return vim.fn.expand("%:t:r")
end

ls.add_snippets("typescriptreact", {
    s("ra", {
        f(function()
            local name = filename()
            return "const " .. name .. " = () => {"
        end, {}),
        t({ "", "    return <div>" }),
        f(function()
            return filename()
        end, {}),
        i(1),
        t({ "</div>", "}", "", "export default " }),
        f(function()
            return filename()
        end, {}),
    }),
})

return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "v2.*",
        build = "make install_jsregexp",
    },
}
