vim.cmd("filetype plugin indent on")

vim.o.ignorecase = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartcase = true
vim.o.hidden = true
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.cursorline = true
vim.o.wrap = true -- Display lines as one long line
vim.opt.termguicolors = true -- Display lines as one long line
vim.o.scrolloff = 8
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.fileencoding = "utf-8"
vim.o.showtabline = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.numberwidth = 4 -- Set number column width to 4 (default 4)
vim.o.pumheight = 10 -- Pop up height


vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Better escape
keymap('i', 'jk', '<ESC>', opts)
keymap('n', '<ESC>', '<ESC>:noh<CR>', {noremap = true, silent = true })

-- Quick return init.lua
keymap('n', '<LEADER>rc', ':e ~/.config/nvim/init.lua<CR>', opts)

-- Better window movement
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Tab switch buffer
keymap('n', '<Tab>', ':bnext<CR>', opts)
keymap('n', '<S-Tab>', ':bprevious<CR>', opts)

-- Move seleteced line / block of text in visual mode
keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', opts)

