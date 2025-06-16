return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			go = { "goimports", "gofumpt" },
			lua = { "stylua" },
			json = { "prettierd", "prettier", stop_after_first = true },
			yaml = { "prettierd", "prettier", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
