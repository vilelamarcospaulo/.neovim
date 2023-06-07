vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'glepnir/dashboard-nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use 'nvim-treesitter/playground'
  use 'mg979/vim-visual-multi'

  -- git handler
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'airblade/vim-gitgutter'
  use 'github/copilot.vim' -- chad autocomplete

  -- infobar
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-lua/lsp-status.nvim'
  use 'ofseed/lualine-copilot'

  -- themes
  use 'EdenEast/nightfox.nvim'
  use 'catppuccin/nvim'

  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

  use 'tpope/vim-dispatch'
  use 'mbbill/undotree'
  -- Coding
  -- <<the hackerman>>
  --
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Lua
  use 'L3MON4D3/LuaSnip'

  -- Clj
  use 'Olical/conjure'
  use 'clojure-vim/vim-jack-in'
end)
