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
                    telescope = {
                        enabled = true,
                    },
                    treesitter = true,
                    harpoon = true,
                    which_key = true,
                    fidget = true,
                    gitsigns = true,
                    lsp_trouble = true,
                    neotree = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
                    },
                },
                term_colors = true,
                transparent_background = true,
            })
            vim.cmd("colorscheme catppuccin")
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            local gruvbox = require("gruvbox")
            gruvbox.setup({})
        end
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
    }
}
