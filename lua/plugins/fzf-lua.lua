return {
  "ibhagwan/fzf-lua",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader><space>",
      "<cmd>lua require('fzf-lua').files({ fzf_colors = true })<CR>",
      desc = "Fuzzy find files in cwd",
    },
    {
      "<leader>/",
      "<cmd>lua require('fzf-lua').lgrep_curbuf({ fzf_colors = true })<cr>",
      desc = "Live grep current buffer",
    },
    {
      "<leader>,",
      "<cmd>lua require('fzf-lua').live_grep_glob({ fzf_colors = true })<cr>",
      desc = "Live grep current project",
    },
    { "<leader>th", "<cmd>FzfLua awesome_colorschemes<CR>",                              desc = "Open theme picker" },
    { "<leader>gs", "<cmd>lua require('fzf-lua').git_status({ fzf_colors = true })<cr>", desc = "git status" },
    {
      "<leader>gc",
      "<cmd>lua require('fzf-lua').git_commits({ fzf_colors = true })<cr>",
      desc = "git project commits",
    },
    {
      "<leader>gcb",
      "<cmd>lua require('fzf-lua').git_bcommits({ fzf_colors = true })<cr>",
      desc = "git buffer commits",
    },
    { "<leader>gbl", "<cmd>lua require('fzf-lua').git_blame({ fzf_colors = true })<cr>",    desc = "git blame" },
    { "<leader>gbr", "<cmd>lua require('fzf-lua').git_branches({ fzf_colors = true })<cr>", desc = "git branches" },
    { "<leader>km",  "<cmd>lua require('fzf-lua').keymaps({ fzf_colors = true })<cr>",      desc = "search keymaps" },
    {
      "<leader>ac",
      "<cmd>lua require('fzf-lua').autocmds({ fzf_colors = true })<cr>",
      desc = "search autocommands",
    },
    {
      "<leader>nc",
      "<cmd>lua require('fzf-lua').commands({ fzf_colors = true })<cr>",
      desc = "search neovim commands",
    },
    { "<leader>re", "<cmd>lua require('fzf-lua').resume({ fzf_colors = true })<cr>",   desc = "resume last search" },
    { "<leader>mp", "<cmd>lua require('fzf-lua').manpages({ fzf_colors = true })<cr>", desc = "search man pages" },
    { "<leader>fm", "<cmd>lua require('fzf-lua').marks({ fzf_colors = true })<cr>",    desc = "search marks" },
  },                                               -- lazy load on key enter
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icon support
  config = function()
    local actions = require("fzf-lua.actions")

    require("fzf-lua").setup({
      "fzf-tmux", -- can't decide if I want this or split window more
      "max-perf",
      winopts = {
        -- split = "belowright new",
        -- fullscreen = true,
      },
      actions = {
        files = {
          ["default"] = actions.file_edit_or_qf,
          ["ctrl-h"] = actions.file_split,
          ["ctrl-v"] = actions.file_vsplit,
          ["ctrl-t"] = actions.file_tabedit,
          ["ctrl-q"] = actions.file_sel_to_qf,
          ["alt-l"] = actions.file_sel_to_ll,
        },
      },
      files = {
        actions = {
          ["ctrl-y"] = { actions.toggle_ignore },
        },
      },
    })
  end,
}
