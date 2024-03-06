return {
	"ThePrimeagen/harpoon",
	keys = {
		{
			"<leader>ha",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			desc = "Mark file with harpoon",
		},
		{
			"<C-n>",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			desc = "Go to next harpoon mark",
		},
		{
			"<C-p>",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			desc = "Go to previous harpoon mark",
		},
		{
			"<leader>hm",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			desc = "Show menu of active marks",
		},
		{
			"<leader>hh",
			":Telescope harpoon marks<cr>",
			desc = "Search for mark w/ preview via Telescope",
		},
	}, -- lazy load key enter
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("harpoon")
	end,
}
