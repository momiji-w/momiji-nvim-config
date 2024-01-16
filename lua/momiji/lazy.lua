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

local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    -- Theme
    {
        "catppuccin/nvim",
        as = "catppuccin"
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        { run = ':TSUpdate' }
    },

    -- Harpoon
    "nvim-lua/plenary.nvim",
    "ThePrimeagen/harpoon",

    -- Undotree
    "mbbill/undotree",

    -- Git intergration
    "tpope/vim-fugitive",

    -- Codeium
    'Exafunction/codeium.vim'
}

local opts = {}

require("lazy").setup(plugins, opts)
