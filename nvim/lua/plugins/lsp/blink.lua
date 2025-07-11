-- return {
-- 	"saghen/blink.cmp",
-- 	dependencies = { "rafamadriz/friendly-snippets" },
-- 	event = "InsertEnter",
-- 	version = "1.*",
-- 	---@module 'blink.cmp'
-- 	---@type blink.cmp.Config
-- 	opts = {
-- 		keymap = {
-- 			preset = "default",
-- 			["<C-u>"] = { "scroll_documentation_up", "fallback" },
-- 			["<C-d>"] = { "scroll_documentation_down", "fallback" },
--
-- 			-- ["<C-h>"] = { "hide_signature", "fallback" }, -- Opcional: Asigna un keymap directo
-- 		},
-- 		appearance = {
-- 			nerd_font_variant = "mono",
-- 			kind_icons = {
-- 				Text = "󰉿",
-- 				Method = "󰊕",
-- 				Function = "󰊕",
-- 				Constructor = "󰒓",
--
-- 				Field = "󰜢",
-- 				Variable = "󰆦",
-- 				Property = "󰖷",
--
-- 				Class = "󱡠",
-- 				Interface = "󱡠",
-- 				Struct = "󱡠",
-- 				Module = "󰅩",
--
-- 				Unit = "󰪚",
-- 				Value = "󰦨",
-- 				Enum = "󰦨",
-- 				EnumMember = "󰦨",
--
-- 				Keyword = "󰻾",
-- 				Constant = "󰏿",
--
-- 				Snippet = "󱄽",
-- 				Color = "󰏘",
-- 				File = "󰈔",
-- 				Reference = "󰬲",
-- 				Folder = "󰉋",
-- 				Event = "󱐋",
-- 				Operator = "󰪚",
-- 				TypeParameter = "󰬛",
-- 			},
-- 		},
-- 		completion = {
-- 			list = {
-- 				max_items = 15,
-- 			},
-- 			accept = { auto_brackets = { enabled = true } },
-- 			trigger = {
-- 				show_on_accept_on_trigger_character = false,
-- 				show_on_trigger_character = false,
-- 				show_on_blocked_trigger_characters = { " ", "\n", "\t", ">", "<" },
-- 				show_on_insert_on_trigger_character = false,
-- 				show_on_x_blocked_trigger_characters = { "'", '"', "(" },
-- 			},
-- 			menu = {
-- 				auto_show = true,
-- 				border = "single",
-- 				draw = {
-- 					treesitter = { "lsp" },
-- 					padding = { 0, 1 },
-- 					components = {
-- 						kind_icon = {
-- 							text = function(ctx)
-- 								return " " .. ctx.kind_icon .. ctx.icon_gap .. " "
-- 							end,
-- 						},
-- 					},
-- 					columns = {
-- 						{ "label", "label_description", gap = 1 },
-- 						{ "kind_icon", "kind" },
-- 					},
-- 				},
-- 			},
-- 			documentation = {
-- 				treesitter_highlighting = true,
-- 				auto_show = false,
-- 				window = {
-- 					border = "single",
-- 					max_width = math.floor(vim.o.columns * 0.4),
-- 					max_height = math.floor(vim.o.lines * 0.5),
-- 				},
-- 			},
-- 			ghost_text = {
-- 				enabled = true,
-- 				show_with_selection = true,
-- 				show_without_selection = true,
-- 				show_with_menu = true,
-- 				show_without_menu = false,
-- 			},
-- 		},
-- 		-- signature = { enabled = true, window = { border = "single" } },
-- 		signature = {
-- 			enabled = false,
-- 			trigger = {
-- 				show_on_trigger_character = false,
-- 				show_on_insert = false,
-- 			},
-- 			window = {
-- 				max_height = 5,
-- 				show_documentation = false,
-- 			},
-- 		},
-- 		sources = {
-- 			default = { "lsp", "path", "snippets", "buffer" },
-- 		},
-- 		-- Experimental signature help support
-- 		cmdline = {
-- 			enabled = true,
-- 			completion = {
-- 				menu = { auto_show = true },
-- 				list = {
-- 					selection = { preselect = false },
-- 				},
-- 			},
-- 			keymap = {
-- 				preset = "enter",
-- 				["<C-y>"] = { "show_and_insert" },
-- 				["<CR>"] = { "accept_and_enter", "fallback" },
-- 				["<Tab>"] = { "select_next", "fallback" },
-- 				["<S-Tab>"] = { "select_prev", "fallback" },
-- 			},
-- 		},
-- 		fuzzy = { implementation = "prefer_rust_with_warning" },
-- 	},
-- 	opts_extend = { "sources.default" },
-- }

return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	event = "InsertEnter",
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "enter",
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide", "fallback" },
			["<CR>"] = { "accept", "fallback" },

			["<Tab>"] = { "snippet_forward", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "fallback" },

			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<C-p>"] = { "select_prev", "fallback_to_mappings" },
			["<C-n>"] = { "select_next", "fallback_to_mappings" },

			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },

			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			accept = { auto_brackets = { enabled = true } },
			list = {
				max_items = 15,
				selection = {
					-- cambio aqui
					preselect = false,
					auto_insert = false,
				},
			},
			trigger = {
				show_on_accept_on_trigger_character = false,
				show_on_trigger_character = false,
				show_on_blocked_trigger_characters = { " ", "\n", "\t", ">", "<" },
				show_on_insert_on_trigger_character = false,
				show_on_x_blocked_trigger_characters = { "'", '"', "(" },
			},
			menu = {
				border = "single",
				draw = {
					treesitter = { "lsp" },
					padding = { 0, 1 },
					components = {
						kind_icon = {
							text = function(ctx)
								return " " .. ctx.kind_icon .. ctx.icon_gap .. " "
							end,
						},
					},
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind" },
					},
				},
			},
			documentation = {
				auto_show = false,
				treesitter_highlighting = true,
				window = {
					border = "single",
					max_width = math.floor(vim.o.columns * 0.4),
					max_height = math.floor(vim.o.lines * 0.5),
				},
			},
			ghost_text = {
				enabled = false,
				show_with_selection = true,
				show_without_selection = true,
				show_with_menu = true,
				show_without_menu = false,
			},
		},
		signature = { enabled = false, window = { border = "single" } },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		cmdline = {
			enabled = true,
			completion = {
				menu = { auto_show = true },
				list = {
					selection = { preselect = false },
				},
			},
			keymap = {
				preset = "enter",
				["<C-y>"] = { "show_and_insert" },
				-- ["<CR>"] = { "accept", "fallback" },
				["<CR>"] = { "accept_and_enter", "fallback" },
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
