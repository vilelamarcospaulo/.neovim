vim.g.mapleader = " "
vim.g.maplocalleader = ";"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<localleader>e", vim.cmd.Ex)

-- formatter
vim.keymap.set("n", "<localleader>jf", "<cmd>%!jq .<CR>")

vim.keymap.set("n", "<C-\\>", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<C-|>", "<cmd>split<CR>")

vim.keymap.set("n", "<C-1>", "<cmd>wincmd 1 w<CR>")
vim.keymap.set("n", "<C-2>", "<cmd>wincmd 2 w<CR>")
vim.keymap.set("n", "<C-3>", "<cmd>wincmd 3 w<CR>")
vim.keymap.set("n", "<C-4>", "<cmd>wincmd 4 w<CR>")
vim.keymap.set("n", "<C-5>", "<cmd>wincmd 5 w<CR>")
vim.keymap.set("n", "<C-6>", "<cmd>wincmd 6 w<CR>")

vim.keymap.set("n", "<leader>bf", "<cmd>Telescope buffers<CR>")

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])   -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])   -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
