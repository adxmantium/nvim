return {
	"adxmantium/hound",
	cmd = "Hound",
	keys = {
		{ "<leader>hgo", ":Hound go<CR>", desc = "Hound google search" },
		{ "<leader>hso", ":Hound so<CR>", desc = "Hound stackoverflow search" },
	},
	config = function()
		local hound = require("hound")

		hound.setup({
			sources = {
				{
					name = "go",
					url = "https://google.com/search",
				},
				{
					name = "so",
					url = "https://stackoverflow.com/search",
				},
			},
		})
	end,
}
