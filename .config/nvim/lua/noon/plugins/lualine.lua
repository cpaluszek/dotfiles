return {
    'nvim-lualine/lualine.nvim',
    config = function()
        -- TODO: check for extensions
        require("lualine").setup({
            options = {
                extension = { "quickfix", "fugitive", "lazy", "mason", "quickfix", "trouble" , "toggleterm"},
                theme = "catppuccin"
            }
        })
    end 
}
