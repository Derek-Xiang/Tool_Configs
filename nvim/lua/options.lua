vim.cmd("filetype plugin indent on")

local opt = vim.opt

opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.conceallevel = 0 -- So that `` is visible in markdown file
opt.fileencoding = "utf-8"
opt.hlsearch = true -- highlight all matches on previous search patter
opt.ignorecase = true -- Ignore case when searc
opt.number = true
opt.relativenumber = true
opt.smartcase = true -- Case sensitive when search with Upper cas
opt.hidden = true -- Switch buffer without saving current buffe
opt.smarttab = true
opt.expandtab = true -- Converts tab to space
opt.showtabline = 2 -- Always show tab
opt.splitbelow = true
opt.splitright = true
opt.showmode = false -- Show INSERT/NORMAL... or no
opt.writebackup = false
opt.swapfile = false
opt.cursorline = true -- Highlight current lin
opt.wrap = true -- Display lines as one long lin
opt.termguicolors = true -- Display lines as one long lin
opt.scrolloff = 8
opt.mouse = "a"
opt.tabstop = 2
opt.autoread = true
opt.shiftwidth = 2
opt.numberwidth = 4 -- Set number column width to 4 (default 4
opt.pumheight = 10 -- Pop up heigh
opt.guifont = "monospace:h17"
opt.timeoutlen = 1000 -- Delay the timeout for key sequence
