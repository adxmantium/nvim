return {
	"numToStr/Comment.nvim", -- plugin for smarter commenting
	event = { "BufReadPre", "BufNewFile" },
	config = true, -- when set to true, automatically calls require("Comment").setup()
	enabled = false,
}
