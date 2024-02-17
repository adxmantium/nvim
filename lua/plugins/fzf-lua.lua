return {
	"ibhagwan/fzf-lua",
	keys = { "<leader><space>", "<leader>/", "<leader>hh" }, -- lazy load on fzf.files(), fzf.live_grep(), harpoon.menu()
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
			"<cmd>lua require('fzf-lua').live_grep()<cr>",
			{ silent = true, desc = "Find string in cwd" }
		)
	end,
}
