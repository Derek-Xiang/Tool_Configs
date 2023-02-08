local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--keymap('n', '<leader>rl', 'luafile %', opts)

-- New Tab
keymap('n', 'te', ':tabedit<CR>', opts)
keymap('n', 'sp', ':split<CR><C-w>l', opts)
keymap('n', 'sv', ':vsplit<CR><C-w>l', opts)

-- Better line start/end
keymap('n', 'H', '^', opts)
keymap('n', 'L', '$', opts)
keymap('v', 'H', '^', opts)
keymap('v', 'L', '$', opts)

-- Better escape
keymap('i', 'jk', '<ESC>', opts)
keymap('n', '<ESC>', '<ESC>:noh<CR>', opts)

-- Better window movement
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
--keymap("n", "<A-k>", ":resize +2<CR>", opts)
keymap("n", "<A-k>", "<C-w>-", opts)
keymap("n", "<A-j>", ":resize -2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize -2<CR>", opts)

-- Better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts) -- Keep the yank, ie. copy paste won't lose current copy

-- Tab switch buffer
keymap('n', '<Tab>', ':bnext<CR>', opts)
keymap('n', '<S-Tab>', ':bprevious<CR>', opts)

-- Move seleteced line / block of text in visual mode
keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
keymap('x', 'J', ':move \'>+1<CR>gvgv\'', opts)


------------------ Plugin keymaps -----------------------

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current(nil, {cfg})<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Nvim Tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>fd', ':Telescope neoclip<CR>', opts)
keymap('n', '<leader>fr', ':lua require("neoclip").clear_history()<CR>', opts)
