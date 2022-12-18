vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }
    use 'sainnhe/everforest'
    use 'mbbill/undotree'

    use {
        'nvim-treesitter/nvim-treesitter', 
        --commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
        tag = 'v0.8.1',
        run = ':TSUpdate'
    }

    use { 
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }

    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'} }
    }
    use 'moll/vim-bbye'
    use {
        'rmagatti/auto-session'
    }
    use {
        'nvim-lualine/lualine.nvim',
    }
    use({
        'kylechui/nvim-surround',
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    use {"akinsho/toggleterm.nvim", tag = '*'}
end)
