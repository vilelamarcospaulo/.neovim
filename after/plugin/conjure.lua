vim.keymap.set('n', '<localleader>rt', '<cmd>ConjureCljRunCurrentTest<CR>', { noremap = true })

vim.cmd("let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defflow', 'defflow-new-system!']")
