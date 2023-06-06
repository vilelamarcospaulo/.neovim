require("nvim-tree").setup {
  view = {
    width = 50
  },
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = true,
  },
}
