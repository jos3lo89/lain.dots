return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				-- Version de Lua (LuaJIT para Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Reconoce globals de Neovim
				globals = {
					"vim",
					"describe", -- Para testing con busted
					"it", -- Para testing con busted
					"before_each",
					"after_each",
				},
			},
			workspace = {
				-- Hace que el servidor reconozca el runtime de Neovim
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false, -- Evita prompt molesto
			},
			telemetry = {
				enable = false, -- Deshabilita telemetría
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
}
