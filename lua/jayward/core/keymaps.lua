-- leader is space
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('i', 'jk', '<esc>', {  noremap = true, desc="exit insert mode"})

keymap.set('n', '<leader>nh', '<cmd>nohlsearch<cr>', { noremap = true, desc="no highlight" })

-- neo-tree mappings
keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<cr>', { noremap = true, desc="Toggle Neotree" })
keymap.set('n', '<leader>ev', '<cmd>Neotree ~/.config/nvim<cr>', { noremap = true, desc="Edit Neovim config" })
keymap.set('n', '<leader>ef', '<cmd>Neotree position=current<cr>', { noremap = true, desc="Show fullscreen explorer" })


