return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>T",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Trouble buffer diagnostics",
		},
		{
			"<leader>tf",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Trouble quickfix",
		},
		{
			"<leader>tl",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Trouble  loclist",
		},
		{
			"<leader>tq",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "Trouble LSP references",
		},
	},
}
