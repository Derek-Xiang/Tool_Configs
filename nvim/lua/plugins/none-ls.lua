return {
	"nvimtools/none-ls.nvim",
	dependencies = { "williamboman/mason.nvim", "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	opts = {
		debug = true,
	},
	config = function(_, opts)
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local sources = {}

		for _, config in pairs(vim.g.lsp_servers or {}) do
            local fmt = config.formatter
		    if fmt then
                local source = formatting[fmt]
                sources[#sources + 1] = source
            end
		end

		null_ls.setup(vim.tbl_deep_extend("keep", opts, { sources = sources }))
	end,
	keys = {
	    {
	        "<leader>lf",
	        function()
	            local active_client = vim.lsp.get_clients { bufnr = 0, name = "null-ls" }

	            local format_option = { async = true }
	            if #active_client > 0 then
	                format_option.name = "null-ls"
	            end
	            vim.lsp.buf.format(format_option)
	        end,
	        mode = { "n", "v" },
	        desc = "format code",
	    },
	},
}
