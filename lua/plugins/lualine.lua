return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = false,
	config = function()
		local function test()
			return "hello world"
		end

		require("lualine").setup({
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { test },
				lualine_x = { "searchcount", "selectioncount" },
				lualine_y = { "filetype" },
				lualine_z = { "location" },
			},
		})
	end,
}
