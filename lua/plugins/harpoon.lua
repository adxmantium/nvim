return {
	"ThePrimeagen/harpoon",
	keys = { "<leader>sm" }, -- lazyload harpoon on <leader>sm enter
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
			"<leader>h",
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
			"<leader>m",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "Show menu of active marks" }
		)
		keymap.set(
			"n",
			"<leader>sm",
			":Telescope harpoon marks<cr>",
			{ desc = "Search for mark w/ preview via Telescope" }
		)
	end,
}
