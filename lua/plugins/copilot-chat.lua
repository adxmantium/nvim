return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		keys = {
			{
				"<leader>ccq",
				function()
					local input = vim.fn.input("What??: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end,
				desc = "CopilotChat - Quick chat using current buffer as context",
			},
			{
				"<leader>cch",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.fzflua").pick(actions.help_actions())
				end,
				desc = "CopilotChat - Help actions",
			},
			-- Show prompts actions with fzf-lua
			{
				"<leader>ccp",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions())
				end,
				desc = "CopilotChat - Prompt actions",
			},
			{
				"<leader>cc/",
				":CopilotChatToggle<CR>",
				desc = "CopilotChat ",
			},
			{
				"<leader>cce",
				":CopilotChatExplain<CR>",
				desc = "CopilotChat Explain active selection",
			},
			{
				"<leader>cco",
				":CopilotChatOptimize<CR>",
				desc = "CopilotChat improve performance and readability",
			},
			{
				"<leader>ccd",
				":CopilotChatDocs<CR>",
				desc = "CopilotChat add documentation comment for active selection",
			},
			{
				"<leader>cct",
				":CopilotChatTests<CR>",
				desc = "CopilotChat generate tests",
			},
			{
				"<leader>ccf",
				":CopilotChatFixDiagnostic<CR>",
				desc = "CopilotChat fix following diagnostic issue",
			},
			{
				"<leader>ccm",
				":CopilotChatCommit<CR>",
				desc = "CopilotChat write commit message for the current changes",
			},
		},
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			-- See Configuration section for rest
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
}
