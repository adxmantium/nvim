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
		{ "<leader>th", "<cmd>FzfLua awesome_colorschemes<CR>", desc = "Open theme picker" },
	}, -- lazy load on key enter
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icon support
	config = function()
		local actions = require("fzf-lua.actions")

		require("fzf-lua").setup({
			"max-perf",
			actions = {
				files = {
					["default"] = actions.file_edit_or_qf,
					["ctrl-h"] = actions.file_split,
					["ctrl-v"] = actions.file_vsplit,
					["ctrl-t"] = actions.file_tabedit,
					["ctrl-q"] = actions.file_sel_to_qf,
					["alt-l"] = actions.file_sel_to_ll,
				},
			},
			files = {
				actions = {
					["ctrl-y"] = { actions.toggle_ignore },
				},
			},
		})
	end,
}
