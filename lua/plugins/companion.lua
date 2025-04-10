return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "j-hui/fidget.nvim"
  },
  config = function()
    require("plugins.codecompanion.fidget-spinner"):init()
    require("codecompanion").setup {}

    vim.keymap.set({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>aa', ':CodeCompanion #buffer ', { noremap = true, silent = false })
  end,
}
