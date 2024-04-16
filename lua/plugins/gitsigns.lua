return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 100,
          ignore_whitespace = true,
          virt_text_priority = 100,
        }
      }
      vim.keymap.set("n", "<leader>gb", "<cmd>:Gitsigns toggle_current_line_blame<CR>")
      vim.keymap.set("n", "<leader>gd", "<cmd>:Gitsigns preview_hunk<CR><cmd>:Gitsigns preview_hunk<CR>")
    end
  },
}
