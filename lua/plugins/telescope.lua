return {
	"nvim-telescope/telescope.nvim", -- plugin for fuzzy finding files & text in files
	branch = "0.1.x",
	events = { "BufReadFile", "BufNewFile" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
				file_ignore_patterns = {}, -- add files to ignore
				cwd = vim.fn.getcwd(), -- Set the default cwd for Telescope
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>.", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find open buffers" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>gc", "<cmd>Telescope git_commit<cr>", { desc = "Find string under cursor in cwd" })
	end,
}
