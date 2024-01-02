return {
  'Olical/conjure',
  dependencies = {
    'm00qek/baleia.nvim',
    'radenling/vim-dispatch-neovim',
    'clojure-vim/vim-jack-in',
  },
  config = function()
    -- tell Conjure to not strip ANSI sequences
    vim.cmd("let g:conjure#log#strip_ansi_escape_sequences_line_limit = 0")
    vim.cmd("let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defflow', 'defflow-new-system!']")

    vim.cmd("let g:baleia = luaeval(\"require('baleia').setup { line_starts_at = 3 }\")")
    vim.cmd("command! BaleiaColorize call g:baleia.once(bufnr('%'))")
    vim.cmd("command! BaleiaHook call g:baleia.automatically(bufnr('%'))")

    vim.api.nvim_create_autocmd("BufNewFile", {
      pattern = "conjure-log-*",
      command = "lua vim.diagnostic.disable(0)"
    })

    vim.api.nvim_create_autocmd("BufNewFile", {
      pattern = "conjure-log-*",
      command = "BaleiaHook"
    })
  end
}
