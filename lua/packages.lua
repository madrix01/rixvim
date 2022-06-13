require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'tanvirtin/monokai.nvim', 
    }
    use 'vim-airline/vim-airline'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'numToStr/Comment.nvim'
    -- git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- startup page
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }    
    -- handlebar 
    use 'mustache/vim-mustache-handlebars'

    -- auto pair 
    use 'windwp/nvim-autopairs'

    -- coc nvim 
    use {'neoclide/coc.nvim', branch = 'release'}

    -- bufferline 
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

    -- markdown preview
    use {"ellisonleao/glow.nvim", branch = 'main'}

end)
