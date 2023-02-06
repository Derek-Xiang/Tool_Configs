local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("nvim-treesitter load failed")
  return
end

configs.setup({
  ensure_installed = { -- :TSInstallInfo to check available languages
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
    "gitignore",
    "markdown",
    "rego",
    "solidity",
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },
})
