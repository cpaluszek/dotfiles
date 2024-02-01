require("catppuccin").setup({
	flavour = "macchiato",
	integrations = {
		cmp = true,
		native_lsp = {
			enabled = true,
		},
		-- nvim-lspconfig = {
		-- 	enabled = true,
		-- },
		telescope = {
            enabled = true,
        },
		treesitter = true,
        harpoon = true,
        -- TODO: add which-key
        which_key = true,
        fidget = true,
	},
	term_colors = true,
	transparent_background = true,
})
