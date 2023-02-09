local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("nvim-treesitter load failed")
  return
end

configs.setup({
  -- :TSInstallInfo to check available languages
  ensure_installed = {
    "vim",
    "lua",
    "python",
    "javascript",
    "typescript",
    "html",
    "scss",
    "json",
    "terraform",
    "yaml",
    "bash",
    "cmake",
    --"gitignore",
    --"markdown",
    "rego",
    "solidity",
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },
})

-- Enable Folding: zc / zo for fold/unfold
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- Open fold by default trick
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
