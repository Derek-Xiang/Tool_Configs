local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here

	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim", commit = "31807eef4ed574854b8a53ae40ea3292033a78ea" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs", commit = "b7672cd49e7c59114ad455205709f918b5430413" }) -- Autopairs, integrates with both cmp and treesitter
  use { "lukas-reineke/indent-blankline.nvim", commit = "c15bbe9f23d88b5c0b4ca45a446e01a0a3913707" }
  use { "nvim-lualine/lualine.nvim", commit = "7b4b864af7e3f528f3bfdb4ab0512d2fcff3c39d" }
  use { "akinsho/bufferline.nvim", commit = "f5791fdd561c564491563cd4139727c38d135dbf" }
  use { "numToStr/Comment.nvim", commit = "0932d0cdcee31d12664f20f728cde8915614a623" }
  use { "akinsho/toggleterm.nvim", commit = "6673a8f2fd2a9c0ed09b9951298093d14ba0445a" }

  -- Colorschemes
  use({ "lunarvim/darkplus.nvim", commit = "f69b646c7762c6e2334f7cff9d5ab231756e4b0d" })

  -- cmp plugins
  use({ "hrsh7th/nvim-cmp", commit = "983453e32cb35533a119725883c04436d16c0120" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }) -- buffer completions
	use({ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
  use({ "hrsh7th/cmp-nvim-lsp" }) -- Extra cmp source from LSP
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "kylechui/nvim-surround" })

  -- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

  -- LSP
  -- use { "neovim/nvim-lspconfig" } -- enable LSP
  -- use { "williamboman/nvim-lsp-installer" } -- simple to use language server installer
  -- use { "jose-elias-alvarez/null-ls.nvim" } -- for formatters and linters
  -- use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }

  -- LSP
  use { "neovim/nvim-lspconfig" } -- enable LSP
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "WhoIsSethDaniel/mason-tool-installer.nvim" }
  use { "jose-elias-alvarez/null-ls.nvim" }
  use { "RRethy/vim-illuminate" }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter" }

  -- Telescope
	use({ "nvim-telescope/telescope.nvim" })

  use 'kyazdani42/nvim-web-devicons'
  use { 'kyazdani42/nvim-tree.lua'}

  -- Git
  use { "lewis6991/gitsigns.nvim" }

  -- Markdown Preview
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
      commit = "02cc3874738bc0f86e4b91f09b8a0ac88aef8e96"
  })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
