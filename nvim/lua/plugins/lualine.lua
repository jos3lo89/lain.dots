return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		options = {
			disabled_filetypes = { "neo-tree", "alpha", "snacks_dashboard" },
		},
		icons_enabled = true,
		theme = "auto",
		extensions = {
			"mason",
			"lazy",
			"oil",
		},
		sections = {
			lualine_a = {
				{
					"mode",
					icon = "󰱯",
				},
			},
		},
	},
}
