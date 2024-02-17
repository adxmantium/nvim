return {
	"ThePrimeagen/harpoon",
	keys = { "<leader><space>", "<leader>/", "<leader>hh" }, -- lazy load on fzf.files(), fzf.live_grep(), harpoon Telescope marks
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("harpoon")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>ha",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)
		keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
		keymap.set(
			"n",
			"<C-p>",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			{ desc = "Go to previous harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>hm",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "Show menu of active marks" }
		)
		keymap.set(
			"n",
			"<leader>hh",
			":Telescope harpoon marks<cr>",
			{ desc = "Search for mark w/ preview via Telescope" }
		)
	end,
}
