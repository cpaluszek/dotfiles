-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}


lsp.set_preferences({
	sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = ''
  }
})

lsp.on_attach(function(client, bufnr)
		print("help")
	local opts = {buffer = bufnr, remap = false}

end)

lsp.setup()
require('lspconfig').lua_ls.setup({})
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})


vim.diagnostic.config({
	virtual_text = true
})
