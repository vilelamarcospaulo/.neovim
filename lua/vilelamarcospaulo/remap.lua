vim.g.mapleader = " "
vim.g.maplocalleader = ";"

vim.keymap.set("t", "<C-w>", "<cmd>tabnext<CR>")

-- explorer files
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- json formatter
vim.keymap.set("n", "<localleader>jf", "<cmd>%!jq .<CR>")

-- jump window
vim.keymap.set("n", "<C-1>", "<cmd>wincmd 1 w<CR>")
vim.keymap.set("n", "<C-2>", "<cmd>wincmd 2 w<CR>")
vim.keymap.set("n", "<C-3>", "<cmd>wincmd 3 w<CR>")
vim.keymap.set("n", "<C-4>", "<cmd>wincmd 4 w<CR>")
vim.keymap.set("n", "<C-5>", "<cmd>wincmd 5 w<CR>")
vim.keymap.set("n", "<C-6>", "<cmd>wincmd 6 w<CR>")

vim.keymap.set("n", "<M-1>", "<cmd>wincmd 1 w<CR>")
vim.keymap.set("n", "<M-2>", "<cmd>wincmd 2 w<CR>")
vim.keymap.set("n", "<M-3>", "<cmd>wincmd 3 w<CR>")
vim.keymap.set("n", "<M-4>", "<cmd>wincmd 4 w<CR>")
vim.keymap.set("n", "<M-5>", "<cmd>wincmd 5 w<CR>")
vim.keymap.set("n", "<M-6>", "<cmd>wincmd 6 w<CR>")

-- Split window
vim.keymap.set("n", "ss", ":split<Return>")
vim.keymap.set("n", "sv", ":vsplit<Return>")

-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- window resizing
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])   -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])   -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
