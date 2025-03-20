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
        end
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
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
                contrast = "hard",
                transparent_mode = false,
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require('kanagawa').setup({
                -- transparent = true,
                theme = "lotus",
                background = {
                    dark = "wave",
                    light = "lotus",
                },
            })
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require('nightfox').setup({
                transparent = true,
                theme = "wave",
            })
        end,
    },
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {
                    {
                        name = "Catppuccin Mocha",
                        colorscheme = "catppuccin-mocha",
                        before = [[
                          vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Catppuccin Latte",
                        colorscheme = "catppuccin-latte",
                        before = [[
                          vim.opt.background = "light"
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
                        name = "Gruvbox dark",
                        colorscheme = "gruvbox",
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
                    },
                    {
                        name = "kanagawa wave",
                        colorscheme = "kanagawa-wave",
                        before = [[
                            vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "kanagawa lotus",
                        colorscheme = "kanagawa-lotus",
                        before = [[
                            vim.opt.background = "light"
                        ]],
                    },
                    {
                        name = "Nightfox",
                        colorscheme = "nightfox",
                        before = [[
                            vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Duskfox",
                        colorscheme = "duskfox",
                        before = [[
                            vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Terafox",
                        colorscheme = "terafox",
                        before = [[
                            vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Carbonfox",
                        colorscheme = "carbonfox",
                        before = [[
                            vim.opt.background = "dark"
                        ]],
                    },
                    {
                        name = "Dayfox",
                        colorscheme = "dayfox",
                        before = [[
                            vim.opt.background = "light"
                        ]],
                    },
                    {
                        name = "Dawnfox",
                        colorscheme = "dawnfox",
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
