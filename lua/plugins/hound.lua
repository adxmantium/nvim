return {
	"adxmantium/hound",
	cmd = "Hound",
	keys = { "<leader>hgo", "<leader>hso" },
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

		vim.keymap.set("n", "<leader>hgo", ":Hound go<CR>", { desc = "Hound google search" })
		vim.keymap.set("n", "<leader>hso", ":Hound so<CR>", { desc = "Hound stackoverflow search" })
	end,
}
