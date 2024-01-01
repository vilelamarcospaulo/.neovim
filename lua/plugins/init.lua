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
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { 'rose-pine/neovim',           name = 'rose-pine' },

  -- auxiliar tools
  'tpope/vim-dispatch',
  'mbbill/undotree',
  'mg979/vim-visual-multi',

  -- Coding
  -- <<the hackerman>>
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
}
