return {
  'kyazdani42/nvim-web-devicons',
  'ryanoasis/vim-devicons',
  'nvim-treesitter/playground',

  -- chad autocomplete,
  'github/copilot.vim',

  -- themes
  'EdenEast/nightfox.nvim',
  'catppuccin/nvim',
  'navarasu/onedark.nvim',
  'lunacookies/vim-substrata',
  {
    'briones-gabriel/darcula-solid.nvim',
    dependencies = 'rktjmp/lush.nvim'
  },

  -- auxiliar tools
  'tpope/vim-dispatch',
  'mbbill/undotree',
  'mg979/vim-visual-multi',

  -- Coding
  -- <<the hackerman>>
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    config = function()
      require('fidget').setup {}
    end
  },

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  -- Lua
  'L3MON4D3/LuaSnip',
}
