return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
end)

