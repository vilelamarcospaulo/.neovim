return {
  'tpope/vim-fugitive',
  depends = {
    'tpope/vim-rhubarb',
    'airblade/vim-gitgutter',
  },
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>gb", vim.cmd.BlameLineToggle)
    vim.keymap.set("n", "<leader>gh", "<cmd>:0Gclog<CR>")


    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>gb", vim.cmd.BlameLineToggle)
    vim.keymap.set("n", "<leader>gh", "<cmd>:0Gclog<CR>")

    -- local blame = require("blame_line")
    -- blame.setup {
    --   prefix = " ",
    --   template = "<author> • <author-time> • <summary> <commit-short>",
    --   date = {
    --     relative = false,
    --     format = "%m-%d-%y",
    --   },
    -- }
    --
    -- blame.disable()
  end
}
