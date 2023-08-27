return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup {
      view = {
        width = 50
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
