return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "folke/noice.nvim",
  },
  config = function()
    require("plugins.codecompanion.notification"):init()
    require("codecompanion").setup {}

    vim.keymap.set({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>aa', ':CodeCompanion #buffer ', { noremap = true, silent = false })
  end,
}
