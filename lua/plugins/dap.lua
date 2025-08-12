return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
        { "theHamsta/nvim-dap-virtual-text", opts = {} },
    },
    opts = {},
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()
        -- UI自動オープン・クローズ設定
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        -- アダプタ設定
        dap.adapters.python = function(cb, config)
            if config.request == "attach" then
                local port = (config.connect or config).port
                local host = (config.connect or config).host or "127.0.0.1"
                cb({
                    type = "server",
                    port = assert(port, "`connect.port` is required for a python `attach` configuration"),
                    host = host,
                    options = {
                        source_filetype = "python",
                    },
                })
            else
                cb({
                    type = "executable",
                    command = "/Users/choboz/Dev/Udemy/python_basic/.virtualenvs/debugpy/bin/python", -- 仮想環境のPython
                    args = { "-m", "debugpy.adapter" },
                    options = {
                        source_filetype = "python",
                    },
                })
            end
        end

        -- 設定
        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}",
                pythonPath = function()
                    -- 明示的に仮想環境を指定
                    local venv_path = "/Users/choboz/Dev/Udemy/python_basic/.virtualenvs/debugpy/bin/python"
                    if vim.fn.executable(venv_path) == 1 then
                        return venv_path
                    end

                    -- fallback: venv/.venv in cwd
                    local cwd = vim.fn.getcwd()
                    if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
                        return cwd .. "/venv/bin/python"
                    elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                        return cwd .. "/.venv/bin/python"
                    else
                        return vim.fn.exepath("python3")
                    end
                end,
            },
        }

        -- 🔧 キーマップ
        local map = vim.keymap.set
        local opts = { noremap = true, silent = true }

        -- map("n", "<Leader>dc", dap.continue, opts)
        -- map("n", "<Leader>do", dap.step_over, opts)
        -- map("n", "<Leader>di", dap.step_into, opts)
        -- map("n", "<Leader>du", dap.step_out, opts)
        -- map("n", "<Leader>db", dap.toggle_breakpoint, opts)
        -- map("n", "<Leader>dB", function()
        --     dap.set_breakpoint(vim.fn.input("Condition: "))
        -- end, opts)
        map("n", "<F5>", dap.continue, opts)
        map("n", "<F10>", dap.step_over, opts)
        map("n", "<F7>", dap.step_into, opts)
        map("n", "<F8>", dap.step_out, opts)
        map("n", "<Leader>b", dap.toggle_breakpoint, opts)
        map("n", "<Leader>B", function()
            dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end, opts)
        map("n", "<Leader>dr", dap.repl.open, opts)
        map("n", "<Leader>dl", dap.run_last, opts)
        map("n", "<Leader>dx", dapui.toggle, opts)
    end,
}
