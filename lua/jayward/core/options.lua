vim.cmd("let g:netrw_liststyle = 3")

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- color and themes
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.signcolumn = 'yes'

-- clipboard
vim.opt.clipboard = 'unnamedplus' -- use system clipboard as default register

-- split windows
vim.opt.splitbelow = true -- split horizontal window below
vim.opt.splitright = true -- split vertical window to the right

-- misc
vim.opt.wrap = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.mouse = 'a'

-- fzf
vim.opt.rtp:prepend('/etc/profiles/per-user/jayward/bin/fzf')

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
