-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Select All
keymap('n', '<C-a>', 'gg<S-v>G', opts)

-- New Tab
keymap('n', 'te', ':tabedit<CR>', opts)
keymap('n', 'sp', ':split<CR><C-w>l', opts)
keymap('n', 'sv', ':vsplit<CR><C-w>l', opts)

-- Better escape
keymap('i', 'jk', '<ESC>', opts)
keymap('n', '<ESC>', '<ESC>:noh<CR>', opts)

-- Quick return init.lua
--keymap('n', '<LEADER>rc', ':e ~/.config/nvim/init.lua<CR>', opts)

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
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

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
keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', opts)

-- Nvim Tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
keymap('n', '<leader>f', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<CR>', opts)
-- keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
-- keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
--


-- Plugin keymaps

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current(nil, {cfg})<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')


-- MarkdownPreview
keymap('n', '<leader>mp', ':MarkdownPreview<CR>', opts)
keymap('n', '<leader>ms', ':MarkdownPreviewStop<CR>', opts)
keymap('n', '<leader>mt', ':MarkdownPreviewToggle<CR>', opts)

-- Terraform settings
vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])
keymap("n", "<leader>ti", ":!terraform init<CR>", opts)
keymap("n", "<leader>tv", ":!terraform validate<CR>", opts)
keymap("n", "<leader>tp", ":!terraform plan<CR>", opts)
keymap("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", opts)
