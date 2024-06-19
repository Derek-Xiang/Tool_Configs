return {
	"mason-org/mason.nvim",
	cmd = "Mason",
	dependencies = {
		{ "neovim/nvim-lspconfig", lazy = true },
	},
	opts = {},
	config = function(_, opts)
		require("mason").setup(opts)

		local registry = require("mason-registry")
		local function install(package)
			local s, p = pcall(registry.get_package, package)
			if s and not p:is_installed() then
				p:install()
			end
		end

		local function setup_lsp(name, config)
			local formatter = config.formatter
            print("=> " .. name)
			install(name)
			install(formatter)

			-- Configs per lsp
			config.capabilities = require("blink.cmp").get_lsp_capabilities()
			config.on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			vim.lsp.config(name, config)
		end

		for server, config in pairs(vim.g.lsp_servers) do
			setup_lsp(server, config)
		end

		vim.diagnostic.config({
			update_in_insert = true,
			severity_sort = true,
			virtual_text = true,
		})

        vim.lsp.inlay_hint.enable()
        vim.lsp.enable(vim.tbl_keys(vim.g.lsp_servers))
	end,
}
