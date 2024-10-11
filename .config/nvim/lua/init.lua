require("noon.remap")
require("noon.set")
require("noon.lazy")

-- TODO: test plugins
-- lazygit
-- sleuth.nvim

local augroup = vim.api.nvim_create_augroup
local NoonGroup = augroup('Noon', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = NoonGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    group = NoonGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        -- TODO: test this
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration", buffer = e.buf })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = e.buf })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover", buffer = e.buf })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation", buffer = e.buf })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename", buffer = e.buf })
        vim.keymap.set("n", "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, { desc = "List workspace folders", buffer = e.buf })

        vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, { desc = "List workspace symbols", buffer = e.buf })
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Go to type definition", buffer = e.buf })
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action", buffer = e.buf })
        vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Check references", buffer = e.buf})
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
