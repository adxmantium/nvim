-- Commands:
-- :Copilot auth
-- :Copilot disable
-- :Copilot enable
-- :Copilot status
-- :Copilot version
return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	-- build = ":Copilot auth", -- disabling this and manually firing commands
	enabled = true,
	config = function()
		require("copilot").setup({})

		vim.keymap.set("n", "<leader>coa", ":Copilot auth<cr>", { desc = "Copilot auth" })
		vim.keymap.set("n", "<leader>cod", ":Copilot disable<cr>", { desc = "Copilot disable" })
		vim.keymap.set("n", "<leader>coe", ":Copilot enable<cr>", { desc = "Copilot enable" })
		vim.keymap.set("n", "<leader>cos", ":Copilot status<cr>", { desc = "Copilot status" })
		vim.keymap.set("n", "<leader>cov", ":Copilot version<cr>", { desc = "Copilot version" })
	end,
}
