vim.cmd("filetype plugin indent on")

local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  conceallevel = 0, -- So that `` is visible in markdown files
  fileencoding = "utf-8",
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- Ignore case when search
  number = true,
  relativenumber = true,
  smartcase = true, -- Case sensitive when search with Upper case
  hidden = true, -- Switch buffer without saving current buffer
  smarttab = true,
  expandtab = true, -- Converts tab to spaces
  showtabline = 2, -- Always show tabs
  splitbelow = true,
  splitright = true,
  showmode = false, -- Show INSERT/NORMAL... or not
  writebackup = false,
  swapfile = false,
  cursorline = true, -- Highlight current line
  wrap = true, -- Display lines as one long line
  termguicolors = true, -- Display lines as one long line
  scrolloff = 8,
  mouse = "a",
  tabstop = 2,
  shiftwidth = 2,
  numberwidth = 4, -- Set number column width to 4 (default 4)
  pumheight = 10, -- Pop up height
  timeoutlen = 100, -- whichkey show up in ms
  guifont = "monospace:h17",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
