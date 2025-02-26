return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neotree" })

        require("neo-tree").setup({
            close_if_last_window = true,
            hijack_netrw_behavior="open_current",
            enable_diagnostics = true,
            enable_git_status = true,
            filesystem = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
            },
            window = {
                position = "current",
            }
        })

    end,
}
