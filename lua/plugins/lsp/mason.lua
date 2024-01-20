-- see: https://github.com/williamboman/mason-lspconfig.nvim
return {
	"williamboman/mason.nvim", -- plugin for a package manager for managing LSPs, linters, & formatters
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			-- in lspconfig.lua, you will need to init the servers there - 1 for each of the installed servers here
			ensure_installed = {
				"tsserver",
				"html",
				"lua_ls",
				"gopls",
				"intelephense",
				-- "eslint",
				-- "cssls",
				-- "emmet_ls",
				-- "pyright",
				-- "phpactor",
				-- "yamlls",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})
	end,
}
