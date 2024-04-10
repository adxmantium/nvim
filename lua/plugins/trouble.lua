return {
	"folke/trouble.nvim",
	keys = {
		{
			"<leader>T",
			"<cmd>TroubleToggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>tw",
			"<cmd>TroubleToggle workspace_diagnostics<cr>",
			desc = "Trouble workspace diagnostics",
		},
		{
			"<leader>tt",
			"<cmd>TroubleToggle document_diagnostics<cr>",
			desc = "Trouble buffer diagnostics",
		},
		{
			"<leader>tf",
			"<cmd>TroubleToggle quickfix<cr>",
			desc = "Trouble quickfix",
		},
		{
			"<leader>tl",
			"<cmd>TroubleToggle loclist<cr>",
			desc = "Trouble  loclist",
		},
		{
			"<leader>tq",
			"<cmd>TroubleToggle lsp_references<cr>",
			desc = "Trouble LSP references",
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
