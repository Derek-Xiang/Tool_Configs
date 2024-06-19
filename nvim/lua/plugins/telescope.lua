return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
	},
	cmd = "Telescope",
	opts = {
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
        telescope.setup(opts)
		telescope.load_extension("fzf")
	end,
	keys = {
		{ "<leader>ff", ":Telescope find_files<CR>", silent = true },
		{ "<leader>fg", ":Telescope live_grep<CR>", silent = true },
		{ "<leader>fb", ":Telescope buffers<CR>", silent = true },
		{ "<leader>fh", ":Telescope help_tags<CR>", silent = true },
	},
}
