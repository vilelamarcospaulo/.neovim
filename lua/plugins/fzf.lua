return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup()
    fzf.register_ui_select()

    vim.keymap.set('n', '<leader>ff', fzf.files)
    vim.keymap.set('n', '<leader>fr', fzf.oldfiles)

    vim.keymap.set('n', '<leader>ps', fzf.grep)
    vim.keymap.set('n', '<leader>fw', fzf.live_grep)
    vim.keymap.set('n', '<C-f>', fzf.live_grep)


    vim.keymap.set('n', '<C-p>', fzf.lsp_live_workspace_symbols)
    vim.keymap.set('n', '<leader>ht', fzf.colorschemes)
    vim.keymap.set("n", "<leader>bf", fzf.buffers)
  end
}
