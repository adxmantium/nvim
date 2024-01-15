-- other themes I've tried
-- "nyoom-engineering/nyoom.nvim"
-- "folke/tokyonight.nvim" (what I started with)
-- "bluz71/vim-moonfly-colors"
-- "kepano/flexoki-neovim"
-- "joshdick/onedark.vim"
-- "Mofiqul/dracula.nvim" (def a go-to)
-- "rose-pine/neovim" (not bad)
-- "mellow-theme/mellow.nvim"
-- "arzg/vim-colors-xcode" (xcodehc second fav actually)
-- "rebelot/kanagawa.nvim" (dragon is probably best)
-- "projekt0n/github-nvim-theme" (github_dark_tritanopia is p nice too)
-- "catppuccin/nvim" (catppuccin-macchiato is fav so far)
return {
	"catppuccin/nvim",
	lazy = true, -- make sure we load this during startup if it is your main colorscheme
	event = "BufWinEnter",
	priority = 1000, -- make sure to load this before all the other start plugins
	enabled = true,
	name = "catppuccin-macchiato", -- name this whatever the repo name is, then update the colorscheme reference
	config = function()
		vim.cmd([[colorscheme catppuccin-macchiato]]) -- update colorscheme to whatever the name is
	end,
}
