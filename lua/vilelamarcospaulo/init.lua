print("It's not too much, but it's honest work")

require('vilelamarcospaulo.remap')

vim.o.clipboard = 'unnamedplus'

vim.wo.number = true
-- vim.wo.relativenumber = true

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 10
