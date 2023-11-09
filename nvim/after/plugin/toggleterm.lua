	-- floating term
vim.keymap.set('n', '<A-i>', "<cmd>ToggleTerm direction=float<CR>", {});
	-- vertical term
vim.keymap.set('n', '<A-h>', "<cmd>ToggleTerm direction=vertical size=50<CR>", {});
	-- horizontal term
vim.keymap.set('n', '<A-v>', "<cmd>ToggleTerm direction=horizontal<CR>", {});
