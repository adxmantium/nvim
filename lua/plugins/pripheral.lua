return {
	"adxmantium/PRipheral",
	keys = {
		{
			"<leader>pr",
			":PRipheral<CR>",
			desc = "Opens peripheral PR description markdown file for current branch",
		},
	},
	config = function()
		require("pripheral").setup()
	end,
}
