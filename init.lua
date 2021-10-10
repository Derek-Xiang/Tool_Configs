-- Standard Settings
require("settings")
require("keymappings")
require("whichkey-config")
vim.cmd("colorscheme nvcode")

-- Normal plugins
require("plugins")
require("treesitter-config")
require("lualine-config")
require("bufferline-config")
require("nvimtree-config")
require("nvimicon-config")
require("compe-config")
require("autopairs-config")
require("telescope-config")

-- LSP
-- require'lspconfig'.pyright.setup{}
require("lsp/lspinstall-config")



