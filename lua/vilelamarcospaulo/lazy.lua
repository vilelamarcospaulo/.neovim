local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  'glepnir/dashboard-nvim',
  'kyazdani42/nvim-web-devicons',
  'ryanoasis/vim-devicons',
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {}
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install')
          .update({ with_sync = true })
      ts_update()
    end
  },
  'nvim-treesitter/playground',

  -- git handler{
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'braxtons12/blame_line.nvim',
  'airblade/vim-gitgutter',

  -- chad autocomplete,
  'github/copilot.vim',

  -- infobar
  'nvim-lualine/lualine.nvim',
  'nvim-lua/lsp-status.nvim',
  'ofseed/lualine-copilot',

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
  'chentoast/marks.nvim',

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

  -- Clojure
  'Olical/conjure',
  'clojure-vim/vim-jack-in',
  { 'm00qek/baleia.nvim', tag = 'v1.3.0' },
})
