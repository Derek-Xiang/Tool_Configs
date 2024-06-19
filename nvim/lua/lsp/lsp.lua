vim.g.lsp_servers = {
	lua_ls = {
		formatter = "stylua",
		settings = {
			Lua = {
				diagnostics = { globals = { "vim" } },
			},
		},
	},

	pyright = { formatter = "black" },
	html = {},
	cssls = {},
	ts_ls = {},
	emmet_ls = {},

    marksman = { formatter = "prettier" },

	bashls = { formatter = "shfmt" },
	jsonls = { formatter = "prettier" },


	terraformls = {
		formatter = "terraform_fmt",
		init_options = { experimentalFeatures = { validateOnSave = true } },
	},
}

