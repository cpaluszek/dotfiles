local opts = {}

function opts.init()
    vim.opt.nu = true
    vim.opt.relativenumber = true

    vim.opt.list = true -- Show space, line breaks, spaces, tabs...

    vim.opt.wrap = false -- Long lines are not wrapped

    vim.opt.signcolumn = "yes"

    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true

    vim.opt.smartindent = true -- Insert indent automatically

    vim.opt.swapfile = false
    vim.opt.backup = false

    vim.opt.cursorline = true -- Highlight current line

    vim.opt.completeopt = { "menu", "menuone", "noselect", "preview" }

    vim.opt.hlsearch = false
    vim.opt.incsearch = true

    vim.opt.termguicolors = true

    vim.opt.scrolloff = 8

    vim.opt.updatetime = 50

    vim.g.mapleader = " "
end

return opts
