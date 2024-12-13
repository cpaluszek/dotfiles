local opts = require("opts")
opts.init()

vim.g.mapleader = " " -- Make sure to set 'mapleader' before lazy so mappings are correct

-- Lazy initialization
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    lockfile = vim.fn.stdpath("config") .. "/../lazy-lock.json",
})

local keys = require("keys")
keys.init()

