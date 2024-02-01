return { 
    { 
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        config = function() 
            require("catppuccin").setup({
                flavour = "mocha",
                integrations  = {
                    cmp = true,
                    native_lsp = {
                        enabled = true;
                    },
                    nvim-lspconfig = {
                        enabled = true;
                    },
                    telescope = {
                        enabled = true,
                    }
                    treesitter = true,
                    harpoon = true,
                    -- TODO: add which-key
                    which_key = true,
                    fidget = true,
                },
                term_colors = true,
                transparent_background = true,
            })
            function ColorMyPencils(color)
                color = color or "catppuccin"
                vim.cmd.colorscheme(color)
                vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
                vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
            end

            ColorMyPencils("catppuccin-mocha")
        end
    },
    -- "folke/tokyonight.nvim",
}
