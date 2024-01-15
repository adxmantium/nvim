return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	build = ":Copilot auth",
	enabled = require("env").IS_WORK,
	config = function()
		require("copilot").setup({})
	end,
}
