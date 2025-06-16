vim.lsp.enable("gopls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("jsonls")
vim.lsp.enable("prismals")
vim.lsp.enable("dockerls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("yamlls")
vim.lsp.enable("emmet-language-server")

vim.diagnostic.config({
	virtual_lines = true,
	-- virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
