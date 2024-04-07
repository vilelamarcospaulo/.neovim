return {
  'nvim-telescope/telescope.nvim',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input('|pattern|> ') })
    end)
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    vim.keymap.set('n', '<C-f>', '<CMD>Telescope live_grep<CR>')
    vim.keymap.set('n', '<C-p>', '<CMD>Telescope lsp_dynamic_workspace_symbols<CR>')
    vim.keymap.set('n', '<leader>fw', '<CMD>Telescope live_grep<CR>')
    vim.keymap.set('n', '<leader>ht', '<CMD>Telescope colorscheme<CR>')
    vim.keymap.set('n', "<leader>fr", '<CMD>Telescope oldfiles<CR>')
    vim.keymap.set("n", "<leader>bf", "<cmd>Telescope buffers<CR>")

    vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"
  end
}
