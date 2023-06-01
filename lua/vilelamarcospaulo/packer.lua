vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}

	use 'nvim-treesitter/playground'
	use 'tpope/vim-fugitive'

	use 'neovim/nvim-lspconfig'
	use 'github/copilot.vim'


	-- infobar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 
			{'linrongbin16/lsp-progress.nvim'},
		}
	}
	use 'ofseed/lualine-copilot'
	use 'EdenEast/nightfox.nvim'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
end)
