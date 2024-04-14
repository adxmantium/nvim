return {
	"folke/zen-mode.nvim",
	cmd = "ZenMode",
	keys = {
		{ "<leader>Z", ":ZenMode<CR>", desc = "Zen mode" },
	},
	dependencies = {
		"folke/twilight.nvim",
	},
}
