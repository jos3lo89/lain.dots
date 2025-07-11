return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	opts = {
		-- provider_selector = function(bufnr, filetype, buftype)
		provider_selector = function(_, _, _)
			return { "treesitter", "indent" }
		end,
	},
	config = function(_, opts)
		-- Configuración necesaria para folding
		vim.o.foldcolumn = "0" -- '0' para ocultar la columna de fold
		vim.o.foldlevel = 99 -- niveles altos para no plegar por defecto
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		require("ufo").setup(opts)

		-- Keymap para alternar el fold bajo el cursor
		-- vim.keymap.set("n", "<leader>z", "za", { silent = true, noremap = true, desc = "Toggle fold" })
		vim.keymap.set("n", "<leader>u", "za", { silent = true, noremap = true, desc = "Toggle fold" })
	end,
}
