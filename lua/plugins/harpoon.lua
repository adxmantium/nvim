return {
	"ThePrimeagen/harpoon",
	event = { "BufReadPre", "BufNewFile" },
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
		{
			"¡",
			"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
			desc = "Nav directly to file 1 (option key + 1)",
		},
		{
			"™",
			"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
			desc = "Nav directly to file 2 (option key + 2)",
		},
		{
			"£",
			"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
			desc = "Nav directly to file 3 (option key + 3)",
		},
		{
			"¢",
			"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
			desc = "Nav directly to file 4 (option key + 4)",
		},
		{
			"∞",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			desc = "Nav directly to file 5 (option key + 5)",
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
