-- leader is space
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('i', 'jk', '<esc>', {  noremap = true, desc="exit insert mode"})

keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, desc="find files" })

keymap.set('n', '<leader>nh', '<cmd>nohlsearch<cr>', { noremap = true, desc="no highlight" })