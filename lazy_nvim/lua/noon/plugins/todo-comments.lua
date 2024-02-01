return {
    -- TODO: fix symbols

    config = function()
        vim.keymap.set("n", "<leader>td", vim.cmd.TodoTelescope)
        vim.keymap.set("n", "<leader>tt", vim.cmd.TodoTrouble)
        vim.keymap.set("n", "<leader>tq", vim.cmd.TodoQuickFix)
        vim.keymap.set("n", "<leader>tl", vim.cmd.TodoLocList)

        require("todo-comments").setup {
            keywords = {
                FIX = {
                    icon = " ", -- icon used for the sign, and in search results
                    color = "error", -- can be a hex color, or a named color (see below)
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "Fix", "Bug" }, -- a set of other keywords that all map to this FIX keywords
                    -- signs = false, -- configure signs for some keywords individually
                },
                TODO = { icon = " ", color = "info", alt = { "Todo" } },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX", "Warn", "Warning" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "Opti", "Optim", "Optimize" } },
                NOTE = { icon = " ", color = "hint", alt = { "INFO", "Info", "Note" } },
                TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
            },
        }

    end
}
