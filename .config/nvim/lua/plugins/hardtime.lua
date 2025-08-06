
return {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        require("hardtime").setup({
            disabled_keys = {
                ["<Up>"] = false,
                ["<Down>"] = false,
            },
        })
    end
}

