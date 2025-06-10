return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			sync_install = false,
			ignore_install = {},
			modules = {},
			auto_install = false,
			ensure_installed = {
				"vim",
				"vimdoc",
				"yaml",
				"query",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"luadoc",
				"luap",
				"regex",
				"toml",
				"markdown",
				"markdown_inline",
				"bash",
				"go",
				"gomod",
				"gowork",
				"gosum",
			},
			-- Habilitar el módulo de highlight
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
				priority = 100,
			},
			-- Habilitar indentación automática
			indent = {
				enable = true,
			},
		})
	end,
}
