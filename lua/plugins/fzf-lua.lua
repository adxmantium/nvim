return {
	"ibhagwan/fzf-lua",
	keys = { "<leader><space>" }, -- lazy load on keymap
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icon support
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})

		-- keymaps
		vim.keymap.set(
			"n",
			"<leader><space>",
			"<cmd>lua require('fzf-lua').files()<CR>",
			{ silent = true, desc = "Fuzzy find files in cwd" }
		)
	end,
}
