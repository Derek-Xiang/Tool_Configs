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
  { "nvim-lua/plenary.nvim" },

  -- Colorschemes
  { "lunarvim/darkplus.nvim" },
  { 'LunarVim/lunar.nvim' },

  -- Nvim-tree
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua" },

  -- Functional
  { "nvim-lualine/lualine.nvim" },
  { "akinsho/bufferline.nvim" },
  { "numToStr/Comment.nvim" },
  { "kylechui/nvim-surround" },
  { "windwp/nvim-autopairs" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "aserowy/tmux.nvim" },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    cond = vim.fn.executable 'make' == 1,
  },
  { "nvim-telescope/telescope.nvim" },
  { "AckslD/nvim-neoclip.lua" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },

  -- Lsp
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "lukas-reineke/lsp-format.nvim" }, -- Format on save

  -- CMP
  { "hrsh7th/nvim-cmp" }, -- Main plugin for cmp, below are sources
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" }, -- Cmp for lua api
  { "hrsh7th/cmp-cmdline" }, -- Cmp for / search
  { "onsails/lspkind-nvim" },

  -- Snippet
  { "L3MON4D3/LuaSnip" },

  -- Git
  { "lewis6991/gitsigns.nvim" },

  -- Markdown Previw
  {
    {
      "Derek-Xiang/markdown-preview.nvim",
      ft = "markdown",
      -- build = "cd app && yarn install",
      build = ":call mkdp#util#install()",
    },
  },

  -- Clipboard-image
  { 'mattdibi/incolla.nvim' }
})
