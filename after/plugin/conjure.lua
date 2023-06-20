vim.keymap.set('n', '<localleader>rt', '<cmd>ConjureCljRunCurrentTest<CR>', { noremap = true })

-- tell Conjure to not strip ANSI sequences
vim.cmd("let g:conjure#log#strip_ansi_escape_sequences_line_limit = 0")
vim.cmd("let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defflow', 'defflow-new-system!']")
