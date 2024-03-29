require "options"
require "keymaps"
require "plugins"

-- Plugin Configs
require "p_lualine"
require "p_nvim-tree"
require "p_bufferline"
require "p_comment"
require "p_surround"
require "p_autopairs"
require "p_indentline"
require "p_tmux"
require "p_treesitter"
require "p_incolla"

-- Git related
require "p_gitsigns"

-- Telescope & its extensions
require "p_telescope"
require "p_neoclip"

-- LSP & CMP
require "lsp"
require "p_cmp"

vim.cmd("colorscheme lunar") -- darkplus
