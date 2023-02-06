local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Required by multiple plugins
  { "nvim-lua/plenary.nvim", commit = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9" },

  -- Lsp
  { "neovim/nvim-lspconfig", commit = "902d6aa31450d26e11bedcbef8af5b6fe2e1ffe8" },
  { "williamboman/mason.nvim", commit = "24846a00941ec020c8addc7f52040a1b2fc12174" },
  { "williamboman/mason-lspconfig.nvim", commit = "53f3a8bdcb77d4a95b082fd57e12173f353c6c3e" },
  { "lukas-reineke/lsp-format.nvim", commit = "ca0df5c8544e51517209ea7b86ecc522c98d4f0a" }, -- Format on save

  -- Colorschemes
  { "lunarvim/darkplus.nvim", commit = "1826879d9cb14e5d93cd142d19f02b23840408a6" },

  -- Nvim-tree
  { "nvim-tree/nvim-web-devicons", commit = "a421d183ef37dfa13f51a5805bed2381aebf9080" },
  { "nvim-tree/nvim-tree.lua", commmit = "215b29bfad74518442621b9d0483a621483b066b" },

  -- Functional
  { "nvim-lualine/lualine.nvim", commit = "0050b308552e45f7128f399886c86afefc3eb988" },
  { "akinsho/bufferline.nvim", commit = "c7492a76ce8218e3335f027af44930576b561013" },
  { "numToStr/Comment.nvim", commit = "dd12730dd112383ea59c7e69eea1757aa7f45f63" },
  { "kylechui/nvim-surround", commit = "ad56e6234bf42fb7f7e4dccc7752e25abd5ec80e" },
  { "windwp/nvim-autopairs", commit = "5a3523ddb573804752de6c021c5cb82e267b79ca" },
  { "lukas-reineke/indent-blankline.nvim", commit = "39bb0d428aa4622fa0a4670506d2307165f1908e" },
  { "aserowy/tmux.nvim", commit = "4e746b3707d4e499acc50d4e64c2fc4f0faf9a44" },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    cond = vim.fn.executable 'make' == 1,
    commit = "fab3e2212e206f4f8b3bbaa656e129443c9b802e"
  },
  { "nvim-telescope/telescope.nvim", commit = "203bf5609137600d73e8ed82703d6b0e320a5f36" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", commit = "e00952111e94f95800a32eeedb057e7ad365960c" },

  -- CMP
  { "hrsh7th/nvim-cmp", commit = "cfafe0a1ca8933f7b7968a287d39904156f2c57d" }, -- Main plugin for cmp, below are sources
  { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" },
  { "hrsh7th/cmp-path", commit = "91ff86cd9c29299a64f968ebb45846c485725f23" },
  { "hrsh7th/cmp-nvim-lsp", commit = "59224771f91b86d1de12570b4070fe4ad7cd1eeb" },
  { "hrsh7th/cmp-nvim-lua", commit = "f3491638d123cfd2c8048aefaf66d246ff250ca6" }, -- Cmp for lua api
  { "hrsh7th/cmp-cmdline", commit = "23c51b2a3c00f6abc4e922dbd7c3b9aca6992063" }, -- Cmp for / search
  { "onsails/lspkind-nvim", commit = "c68b3a003483cf382428a43035079f78474cd11e" },

  -- Snippet
  { "L3MON4D3/LuaSnip", commit = "d404ec306bfa4cdb0c3605dbb17e8a93a9597337" },
})
