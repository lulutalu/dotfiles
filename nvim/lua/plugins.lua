return require('packer').startup(function(use)
		use 'EdenEast/nightfox.nvim'
		use 'wbthomason/packer.nvim'
		use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
		}
		use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
		}
		use { "williamboman/mason.nvim" }
		use	{ "williamboman/mason-lspconfig.nvim" }
		use 'neovim/nvim-lspconfig'
		use {
		  'nvim-lualine/lualine.nvim',
		  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
end)
