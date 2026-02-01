return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascript = { "prettierd" },
				go = { "golines" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				typescript = { "prettierd" },
				lua = { "stylua" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "never",
			},
		},
	},
}
