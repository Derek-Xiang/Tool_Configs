return {
	"xiyaowong/nvim-transparent",
	opts = {
		extra_groups = {
			"NormalFloat",
			"NvimTreeNormal",
		},
	},
    config = function(_, opts)
        require("transparent").setup(opts)
    end
}
