return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        indent = {
            enabled = true,
            only_scope = true,
            animate = {
                enabled = false,
            },
            scope = {
                enabled = true,
            },
            lazygit = {
                enabled = true, -- does not allow to jump to file
            }
            -- TODO: check the remaining snacks
        },
        -- explorer = {
        --     -- TODO: missing feature - close if last window
        --     enabled = true,
        --     auto_close = true,
        -- },
        -- picker = {  -- Could replace telescope
        --     enabled = true,
        -- }
    },
    keys = {
        { "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit" },
        -- Top Pickers & Explorer
        -- { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
        -- { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
        -- { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
        -- { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        -- { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
        -- { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    }
}
