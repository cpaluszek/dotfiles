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
                -- transparent_background = true,
            })
        end
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
    },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                background = "medium",
            })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            local gruvbox = require("gruvbox")
            gruvbox.setup({
                contrast = "medium",
            })
            vim.cmd("colorscheme gruvbox")
        end
    },
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {
                    {
                        name = "Catppuccin",
                        colorscheme = "catppuccin-mocha",
                        before = [[
                          vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Tokyonight",
                        colorscheme = "tokyonight",
                        before = [[
                          vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Gruvbox light",
                        colorscheme = "gruvbox",
                        before = [[
                          vim.opt.background = "light"
                        ]],
                    },
                    {
                        name = "Everforest light",
                        colorscheme = "everforest",
                        before = [[
                          vim.opt.background = "light"
                        ]],
                    }
                },
                livePreview = true,
            })
        end
    }
}
