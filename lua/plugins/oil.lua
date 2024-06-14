return {
	"stevearc/oil.nvim",
	keys = {
		{ "<leader>oo", "<CMD>Oil --float<CR>", desc = "Open parent directory" },
	},
	opts = {
		float = {
			-- Padding around the floating window
			padding = 20,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
