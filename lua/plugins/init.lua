return {
  'kyazdani42/nvim-web-devicons',
  'ryanoasis/vim-devicons',
  'nvim-treesitter/playground',

  -- auxiliar tools
  'tpope/vim-dispatch',
  'mbbill/undotree',
  'mg979/vim-visual-multi',

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()

      local opts = {}
      vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', opts)
      vim.api.nvim_set_keymap('v', '<C-_>', 'gc', opts)
    end
  },
}
