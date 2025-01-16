return {
  { "MunifTanjim/nui.nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>n",  "",                   desc = "Noice" },
      { "<leader>nn", "<cmd>Noice all<cr>", desc = "Open Noice" },
    },
    opts = {
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { pattern = "^:", icon = " 󰄾", lang = "vim" },
        }
      },
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
      presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        long_message_to_split = true, -- long messages will be sent to a split
        lsp_doc_border = false,       -- add a border to hover docs and signature help
      },
    },
  },
}
