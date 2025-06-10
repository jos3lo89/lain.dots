return {
	"rebelot/kanagawa.nvim",
	opts = {
		compile = false,
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		transparent = false,
		dimInactive = false,
		terminalColors = true,
		colors = {
			palette = {},
			theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		},
		-- overrides = function(colors)
		-- 	local theme = colors.theme
		-- 	return {
		-- 		-- Colores para elementos dentro de strings
		-- 		["@string.escape"] = { fg = theme.syn.special1, bold = true },
		-- 		["@string.special"] = { fg = theme.syn.special2, bold = true },
		-- 		-- Específico para Go printf verbs (%d, %s, etc.)
		-- 		["@string.special.go"] = { fg = theme.syn.special1, bold = true },
		-- 		-- Escape sequences (\n, \t, etc.)
		-- 		["@string.escape.go"] = { fg = theme.syn.operator, bold = true },
		-- 		-- Alternativamente, puedes usar colores específicos:
		-- 		-- ["@string.escape"] = { fg = "#FF9E3B", bold = true },
		-- 		-- ["@string.special"] = { fg = "#7FB4CA", bold = true },
		-- 	}
		-- end,
		theme = "dragon",
		background = {
			dark = "wave",
			light = "lotus",
		},
	},
}
