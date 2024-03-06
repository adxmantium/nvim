return {
	"tpope/vim-fugitive",
	cmd = "Git", -- lazyload when :Git command is entered
	keys = {
		{ "<leader>G", ":Git<CR>", desc = ":Git" },
	},
	enabled = true,
}
