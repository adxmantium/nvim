return {
	"ibhagwan/fzf-lua",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{ "<leader><space>", "<cmd>lua require('fzf-lua').files()<CR>", desc = "Fuzzy find files in cwd" },
		{ "<leader>/", "<cmd>lua require('fzf-lua').lgrep_curbuf()<cr>", desc = "Live grep current buffer" },
		{
			"<leader>,",
			"<cmd>lua require('fzf-lua').live_grep_native()<cr>",
			desc = "Live grep current project",
		},
	}, -- lazy load on key enter
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icon support
	config = function()
		local actions = require("fzf-lua.actions")

		require("fzf-lua").setup({
			"max-perf",
			files = {
				actions = {
					["ctrl-y"] = { actions.toggle_ignore },
				},
			},
		})
	end,
}
