vim.cmd("filetype plugin indent on")

vim.o.ignorecase = true -- Ignore case when search
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartcase = true -- Case sensitive when search with Upper case
vim.o.hidden = true -- Switch buffer without saving current buffer
vim.o.smarttab = true
vim.o.expandtab = true -- Converts tab to spaces
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showmode = false -- Show INSERT/NORMAL... or not
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.cursorline = true -- Highlight current line
vim.o.wrap = true -- Display lines as one long line
vim.opt.termguicolors = true -- Display lines as one long line
vim.o.scrolloff = 8
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.showtabline = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.numberwidth = 4 -- Set number column width to 4 (default 4)
vim.o.pumheight = 10 -- Pop up height
vim.o.timeoutlen = 100 -- whichkey show up in ms

vim.g.mapleader = ' '
