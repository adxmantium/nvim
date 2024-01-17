return {
	"hrsh7th/nvim-cmp", -- autocompletion plugin
	event = "InsertEnter", -- lazy load this on vim insert mode
	dependencies = { -- plugin dependencies
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"onsails/lspkind.nvim", -- vs-code like pictograms
		"L3MON4D3/LuaSnip", -- lua snippet engine
		"saadparwaiz1/cmp_luasnip", -- lua autocomplete
		"rafamadriz/friendly-snippets", -- useful snippets for a lot of languages
		{ "zbirenbaum/copilot-cmp", enabled = require("env").IS_WORK }, -- copilot suggestions in cmp menu
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		-- load vs-code-like snippets from plugins (ex: friendly-snippet)
		require("luasnip.loaders.from_vscode").lazy_load()

		-- init copilot-cmp
		if require("env").IS_WORK then
			require("copilot_cmp").setup()
		end

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "copilot" },
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),
			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
