-- -- lazy.nvim
-- return {
-- 	"folke/noice.nvim",
-- 	enabled = true,
-- 	event = "VeryLazy",
-- 	opts = {
-- 		-- add any options here
-- 		cmdline = {
-- 			enabled = true, -- esto activa los popups para `:` y `/`
-- 		},
-- 		messages = {
-- 			enabled = false, -- evita que capte mensajes LSP como hover o echo
-- 		},
-- 		notify = {
-- 			enabled = true, -- reemplaza vim.notify
-- 		},
-- 		lsp = {
-- 			progress = {
-- 				enabled = false, -- no mostrar progreso del LSP
-- 			},
-- 			hover = {
-- 				enabled = false, -- desactiva popup de hover
-- 			},
-- 			signature = {
-- 				enabled = false, -- desactiva signatureHelp
-- 			},
-- 			override = {
-- 				-- no reemplacemos nada
-- 				["vim.lsp.util.convert_input_to_markdown_lines"] = false,
-- 				["vim.lsp.util.stylize_markdown"] = false,
-- 				["cmp.entry.get_documentation"] = false,
-- 			},
-- 		},
-- 		presets = {
-- 			command_palette = true, -- bonito popup tipo palette
-- 			lsp_doc_border = false, -- opcional
-- 		},
-- 	},
-- 	dependencies = {
-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
-- 		"MunifTanjim/nui.nvim",
-- 		-- OPTIONAL:
-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
-- 		--   If not available, we use `mini` as the fallback
-- 		"rcarriga/nvim-notify",
-- 	},
-- }
-- lazy.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
		lsp = {
			progress = {
				enabled = false, -- no mostrar progreso del LSP
			},
			hover = {
				enabled = false, -- desactiva popup de hover
			},
			signature = {
				enabled = false, -- desactiva signatureHelp
			},
			override = {
				-- no reemplacemos nada
				["vim.lsp.util.convert_input_to_markdown_lines"] = false,
				["vim.lsp.util.stylize_markdown"] = false,
				["cmp.entry.get_documentation"] = false,
			},
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}
