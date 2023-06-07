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
