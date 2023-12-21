return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup {
      view = {
        width = 60
      },
      filters = {
        dotfiles = false,
        custom = { '^.git$' },
      },
      update_focused_file = {
        enable = true,
      },
      diagnostics = {
        enable = true,
      },
    }
  end
}
