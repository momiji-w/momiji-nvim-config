-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })

    -- Harpoon
    use("nvim-lua/plenary.nvim")
    use("ThePrimeagen/harpoon")

    -- Undotree
    use("mbbill/undotree")

    -- Git intergration
    use("tpope/vim-fugitive")

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- Auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Codeium
    use 'Exafunction/codeium.vim'

    -- Rename Plugin
    use {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end
    }
end)
