return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    keys = {
      {
        "<leader>;?",
        function()
          local input = vim.fn.input("What??: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat using current buffer as context",
      },
      {
        "<leader>;h",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.fzflua").pick(actions.help_actions())
        end,
        desc = "CopilotChat - Help actions",
      },
      -- Show prompts actions with fzf-lua
      {
        "<leader>;a",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
      {
        "<leader>;;",
        ":CopilotChatToggle<CR>",
        desc = "CopilotChat ",
      },
    },
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      mappings = {
        reset = {
          normal = "<C-r>",
          insert = "<C-r>",
        },
      },
      -- window = {
      -- 	layout = "float",
      -- 	relative = "cursor",
      -- 	width = 1,
      -- 	height = 0.4,
      -- 	row = 1,
      -- },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
