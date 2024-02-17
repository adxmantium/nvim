return {
	"ibhagwan/fzf-lua",
	keys = { "<leader><space>", "<leader>/", "<leader>hh" }, -- lazy load on fzf.files(), fzf.live_grep(), harpoon Telescope marks
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icon support
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})

		-- keymaps
		vim.keymap.set(
			"n",
			"<leader><space>",
			"<cmd>lua require('fzf-lua').files()<CR>",
			{ silent = true, desc = "Fuzzy find files in cwd" }
		)

		vim.keymap.set(
			"n",
			"<leader>/",
			"<cmd>lua require('fzf-lua').lgrep_curbuf()<cr>",
			{ silent = true, desc = "Live grep current buffer", noremap = false }
		)

		vim.keymap.set(
			"n",
			"<leader>,",
			"<cmd>lua require('fzf-lua').live_grep_native()<cr>",
			{ silent = true, desc = "Live grep current project" }
		)
	end,
}
