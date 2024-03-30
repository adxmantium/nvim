return {
	"Exafunction/codeium.nvim",
	keys = {
		{ "<leader>code", ":CodeiumEnable<CR>", desc = "Enable Codeium" },
	},
	build = ":Codeium Auth",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		vim.api.nvim_create_user_command("CodeiumEnable", function()
			require("codeium").setup({})
		end, {
			nargs = 0,
		})
	end,
}
