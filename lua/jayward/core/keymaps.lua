-- leader is space
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('i', 'jk', '<esc>', {  noremap = true, desc="exit insert mode"})
keymap.set('n', '<leader>rr', '<cmd>source $MYVIMRC<cr>', { noremap = true, desc="Reload vimrc" })


keymap.set('n', '<leader>nh', '<cmd>nohlsearch<cr>', { noremap = true, desc="no highlight" })

-- neo-tree mappings
keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<cr>', { noremap = true, desc="Toggle Neotree" })
keymap.set('n', '<leader>ev', '<cmd>Neotree ~/.config/nvim<cr>', { noremap = true, desc="Edit Neovim config" })
keymap.set('n', '<leader>em', '<cmd>Neotree ~/src/mamba<cr>', { noremap = true, desc="Show Mamba Projects" })
keymap.set('n', '<leader>ef', '<cmd>Neotree position=current<cr>', { noremap = true, desc="Show fullscreen explorer" })


--
-- Copy Cursor Reference
-- 
vim.keymap.set("x", "gr", function()
  if vim.fn.mode() ~= "V" then
    return
  end

  local start_line = vim.fn.line("v")
  local end_line = vim.fn.line(".")
  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end

  local file = vim.fn.expand("%:.")
  local ref = (start_line == end_line)
    and string.format("@%s:%d", file, start_line)
    or string.format("@%s:%d-%d", file, start_line, end_line)

  vim.fn.setreg("+", ref)
  vim.fn.setreg('"', ref)

  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes("<Esc>", true, false, true),
    "x",
    false
  )
end, { desc = "Copy file:line reference" })
