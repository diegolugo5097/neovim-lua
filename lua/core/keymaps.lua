vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.keymap.set("n", "//", ":nohlsearch<CR>")

-- spilt between windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-t>', ':terminal<CR>', { noremap = true })  -- open
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- next and prev navigation bufferline
vim.keymap.set("n", "<leader>e", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLineCyclePrev<CR>")

-- split vertical windows
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")

-- split horizontal windows
vim.keymap.set("n", "<leader>h", ":split<CR>")


-- close windows
vim.keymap.set("n", "<leader>c", ":bdelete<CR>")

