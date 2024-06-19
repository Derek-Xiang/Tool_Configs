return {
	"nvimdev/lspsaga.nvim",
	cmd = "Lspsaga",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<CR>",
			},
		},
	},
	keys = {
		{ "<leader>lr", ":Lspsaga rename<CR>", desc = "rename" },
		{ "<leader>lc", ":Lspsaga code_action<CR>", desc = "code action" },
		{ "<leader>ld", ":Lspsaga goto_definition<CR>", desc = "goto definition" },
		{ "<leader>lh", ":Lspsaga hover_doc<CR>", desc = "hover doc" },
		{ "<leader>lR", ":Lspsaga finder<CR>", desc = "finder" },
		{ "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>", desc = "next diagnal" },
		{ "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>", desc = "prev diagnal" },
	},
}
