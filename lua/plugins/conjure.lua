return {
  'Olical/conjure',
  dependencies = {
    'm00qek/baleia.nvim',
  },
  config = function()
    require('baleia').setup {
      line_starts_at = 3,
    }

    vim.keymap.set('n', '<localleader>rt', '<cmd>ConjureCljRunCurrentTest<CR>', { noremap = true })

    -- tell Conjure to not strip ANSI sequences
    vim.cmd("let g:conjure#log#strip_ansi_escape_sequences_line_limit = 0")
    vim.cmd("let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defflow', 'defflow-new-system!']")

    vim.cmd("let g:baleia = luaeval(\"require('baleia').setup { line_starts_at = 3 }\")")
    vim.cmd("autocmd BufWinEnter conjure-log-* call g:baleia.automatically(bufnr('%'))")
  end
}
