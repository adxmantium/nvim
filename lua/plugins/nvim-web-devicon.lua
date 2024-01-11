return {
	"nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	enabled = false,
	config = function()
		require("nvim-web-devicons").set_icon({
			gql = {
				icon = "",
				color = "#e535ab",
				cterm_color = "199",
				name = "GraphQL",
			},
		})
	end,
}
