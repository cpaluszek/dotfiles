return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { 'nvim-lua/plenary.nvim' },

    -- TODO: check https://github.com/Christopher2K/dotfiles/blob/main/dot_config/nvim/lua/plugins/telescope.lua

    config = function()
        local open_with_trouble = require("trouble.sources.telescope").open

        -- Use this to add more results without clearing the trouble list
        -- local add_to_trouble = require("trouble.sources.telescope").add
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-x>"] = open_with_trouble,
                    },
                    n = { ["<C-x>"] = open_with_trouble },
                },
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                },
            },
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files( { hidden = true} )
        end, { desc="Telescope find files" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc='Telescope find buffers'})


        -- Note: useful?
        -- git files search
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        -- project search
        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        -- search for word under cursor
        vim.keymap.set('n', '<leader>fws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>fWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

