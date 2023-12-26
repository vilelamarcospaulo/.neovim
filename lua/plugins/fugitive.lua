return {
  {
    'tpope/vim-fugitive',
    dependencies = {
      'tpope/vim-rhubarb',
      'airblade/vim-gitgutter',
    },
    config = function()
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
      vim.keymap.set("n", "<leader>gh", "<cmd>:0Gclog<CR>")
    end
  },
  {
    'f-person/git-blame.nvim',
    config = function()
      require 'gitblame'.setup {
        enabled = false,
      }

      vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameToggle)
    end
  }
}
