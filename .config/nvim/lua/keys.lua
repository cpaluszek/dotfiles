local keys = {}

function keys.init()
    -- Disable arrow keys
    vim.keymap.set("n", "<up>", "<nop>", { silent = true })
    vim.keymap.set("n", "<down>", "<nop>", { silent = true })
    vim.keymap.set("n", "<left>", "<nop>", { silent = true })
    vim.keymap.set("n", "<right>", "<nop>", { silent = true })

    -- Clear search with <esc>
    vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

    -- move visual block by lines up or down
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up", silent = true })
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down", silent = true })

    -- take line below and append to current line w/o moving cursor
    vim.keymap.set("n", "J", "mzJ`z", { desc = "Append line bellow to current line", silent = true })

    -- COPY AND PASTE
    -- best remap ever - allow to paste above selection without adding to buffer
    vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste selection without adding to buffer", silent = true })

    -- next greatest remap - copy to sys clipboard
    vim.keymap.set("n", "<leader>y", "\"+y")
    vim.keymap.set("v", "<leader>y", "\"+y")
    vim.keymap.set("n", "<leader>Y", "\"+Y")

    vim.keymap.set("n", "<leader>d", "\"_d")
    vim.keymap.set("v", "<leader>d", "\"_d")

    -- search and replace
    vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>", { desc = "Search and replace", silent = true })
end

return keys

