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
    'lua_ls',
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
  ["lua_ls"] = function()
    require("lspconfig").lua_ls.setup {
      on_attach = lsp_settings.on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          checkThirdParty = false, -- Disable popup selection question
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim' },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end,
}
