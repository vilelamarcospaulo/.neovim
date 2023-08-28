return {
  'tpope/vim-fugitive',
  dependencies = {
    'tpope/vim-rhubarb',
    'airblade/vim-gitgutter',
    'braxtons12/blame_line.nvim',
  },
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>gb", vim.cmd.BlameLineToggle)
    vim.keymap.set("n", "<leader>gh", "<cmd>:0Gclog<CR>")

    local blame = require("blame_line")
    blame.setup {
      prefix = " ",
      template = "<author> • <author-time> • <summary> <commit-short>",
      date = {
        relative = false,
        format = "%m-%d-%y",
      },
    }

    blame.disable()
  end
}
