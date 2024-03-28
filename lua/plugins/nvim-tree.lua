return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    -- vim.g.loaded_netrw = 1
    -- vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      diagnostics = {
        enable = true,
      },
      filters = {
        dotfiles = false,
        custom = { '^.git$' },
      },
      update_focused_file = {
        enable = true,
      },
      view = {
        side = 'right',
        width = 60
      },
    }
  end
}
