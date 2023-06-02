vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }

  use 'nvim-treesitter/playground'

  -- git handler
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  use 'github/copilot.vim' -- chad autocomplete

  -- infobar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      { 'linrongbin16/lsp-progress.nvim' },
    }
  }
  use 'ofseed/lualine-copilot'

  -- themes
  use 'EdenEast/nightfox.nvim'
  use 'catppuccin/nvim'

  use 'tpope/vim-dispatch'
  use 'mbbill/undotree'

  -- Coding
  -- <<the hackerman>>
  --
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Lua
  use 'L3MON4D3/LuaSnip'

  -- Clj
  use 'Olical/conjure'
  use 'clojure-vim/vim-jack-in'
end)