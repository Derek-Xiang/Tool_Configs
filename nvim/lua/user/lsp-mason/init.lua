local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  vim.notify("mason loaded fail")
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  vim.notify("mason lspconfig loaded fail")
  return
end

local mason_tool_installer_status_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not mason_tool_installer_status_ok then
  vim.notify("mason-tool-installer loaded fail")
  return
end


-- :h manson-lspconfig.setup()
-- vim.tbl_keys() => print lua table keys

-- Debug
-- local tools = require("utils.tools")
-- local mason_registry = require("mason-registry")
-- tools.print_table(mason_registry.get_installed_packages())


local keymaps = require("user.lsp-mason.keymaps")

local servers = {
  "sumneko_lua",
  "cssls",
  "html-lsp",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
}


mason.setup()


mason_tool_installer.setup {
  --ensure_installed = servers,
  auto_update = false,
  run_on_start = true,
}


mason_lspconfig.setup({
  ensure_installed = servers,
  automatic_installation = false,
})


mason_lspconfig.setup_handlers {

  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = keymaps.on_attach,
      capabilities = keymaps.capabilities
    }
  end,
}
