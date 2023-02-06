require("catppuccin").setup({
	flavour = "macchiato",
	integrations  = {
		cmp = true,
		native_lsp = {
			enabled = true;
		},
		telescope = true,
		treesitter = true
	},
	term_colors = true,
	transparent_background = true,
})
