vim.cmd("let g:baleia = luaeval(\"require('baleia').setup { line_starts_at = 3 }\")")
vim.cmd("autocmd BufWinEnter conjure-log-* call g:baleia.automatically(bufnr('%'))")
