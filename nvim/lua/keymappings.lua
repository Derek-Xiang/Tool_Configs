local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Better escape
keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'jj', '<ESC>', opts)
keymap('n', '<ESC>', '<ESC>:noh<CR>', opts)

-- Quick return init.lua
--keymap('n', '<LEADER>rc', ':e ~/.config/nvim/init.lua<CR>', opts)

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
