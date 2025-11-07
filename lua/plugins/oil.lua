return {
  "stevearc/oil.nvim",
  keys = {
    { "<leader>oo", "<CMD>Oil --float<CR>", desc = "Open parent directory" },
    { "-",          "<CMD>Oil --float<CR>", desc = "Open parent directory" },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      keymaps = {
        ["<C-v>"] = { "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
      },
      float = {
        -- Padding around the floating window
        padding = 20,
      },
      view_options = {
        show_hidden = true,
      }
    })
  end,
}
