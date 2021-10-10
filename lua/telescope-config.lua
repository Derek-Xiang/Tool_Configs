local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<LEADER>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<LEADER>fg', ':Telescope live_grep<CR>', opts)
