return {
	"MeanderingProgrammer/markdown.nvim",
	name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
	event = { "BufReadPre", "BufNewFile" },
	ft = { "markdown", "codecompanion" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("render-markdown").setup({})
	end,
}
