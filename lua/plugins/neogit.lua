return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",  -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
  },
  config = function()
    local neogit = require('neogit')
    neogit.setup {
    }

    vim.keymap.set("n", "<leader>gs", (function()
      return neogit.open()
    end), { noremap = true })
  end
}
