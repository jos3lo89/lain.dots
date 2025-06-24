return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
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
