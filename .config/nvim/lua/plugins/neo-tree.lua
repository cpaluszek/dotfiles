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
    end,
    opts = {
        enable_diagnostics = false,
        enable_git_status = false,
        filesystem = {
            follow_current_file = {
                enabled = true,
                leave_dirs_open = false,
            },
        },
    },
}
