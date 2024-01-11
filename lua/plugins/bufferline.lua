return {
	"akinsho/bufferline.nvim", -- plugin for adding vscode-like tabs for each open buffer
	enabled = false,
	event = "VeryLazy",
	keys = {
		{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
		{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
		{ "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
		{ "<leader>bl", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		{ "<leader>bh", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
	},
	opts = { -- passing opts will implicitly call require("bufferline").setup(opts) and passing the provided options
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
}
