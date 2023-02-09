local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  vim.notify("mason loaded fail")
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  vim.notify("mason-lspconfig loaded fail")
  return
end

mason.setup({ PATH = "prepend" })
mason_lspconfig.setup({
  -- LSP servers: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
  ensure_installed = {
    'sumneko_lua',
    'tsserver',
    'html',
    'cssls',
    'bashls',
    'dockerls',
    'jsonls',
    --'marksman',
    'pyright',
    'solidity',
    'terraformls',
    'yamlls'
  },
  automatic_installation = true,
})



local lsp_settings = require("lsp.lsp_settings")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lspconfig.setup_handlers {
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = lsp_settings.on_attach,
      capabilities = capabilities,
    }
  end,
  ["sumneko_lua"] = function()
    require("lspconfig").sumneko_lua.setup {
      on_attach = lsp_settings.on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the 'vim' global varible
            globals = { "vim" }
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          }
        }
      }
    }
  end,
}
