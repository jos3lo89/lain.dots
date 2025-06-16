local keymap = vim.keymap
-- Atajo para limpiar resaltado de búsqueda
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

--- Guardar y Salir
keymap.set("n", "<Leader>w", ":w<CR>", { desc = "Guardar archivo", noremap = true, silent = true })
keymap.set("n", "<Leader>q", ":q<CR>", { desc = "Cerrar archivo", noremap = true, silent = true })

--- Mejor Indentación en Modo Visual
keymap.set("v", "<", "<gv", { desc = "Reducir indentación", noremap = true, silent = true })
keymap.set("v", ">", ">gv", { desc = "Aumentar indentación", noremap = true, silent = true })

--- Mover Líneas Seleccionadas en Modo Visual
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover línea abajo", noremap = true, silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover línea arriba", noremap = true, silent = true })

--- Manejo de Splits (ventanas divididas)
keymap.set("n", "<Leader>|", ":vsplit<CR>", { desc = "Split vertical", noremap = true, silent = true })
keymap.set("n", "<Leader>-", ":split<CR>", { desc = "Split horizontal", noremap = true, silent = true })

-- selecionar todo
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Seleccionar todo", noremap = true, silent = true })

--- Moverse entre Splits
keymap.set("n", "<Leader>h", "<C-w>h", { desc = "Ir al split izquierdo", noremap = true, silent = true })
keymap.set("n", "<Leader>j", "<C-w>j", { desc = "Ir al split inferior", noremap = true, silent = true })
keymap.set("n", "<Leader>k", "<C-w>k", { desc = "Ir al split superior", noremap = true, silent = true })
keymap.set("n", "<Leader>l", "<C-w>l", { desc = "Ir al split derecho", noremap = true, silent = true })

-- plugins
-- oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Abrir directorio" })
keymap.set("n", "_", "<CMD>Oil --float<CR>", { desc = "Abrir directorio en ventana flotante" })

--- barbar
keymap.set("n", "<tab>", ":BufferNext<CR>", { desc = "Siguiente buffer", noremap = true, silent = true })
keymap.set("n", "<S-tab>", ":BufferPrevious<CR>", { desc = "Buffer anterior", noremap = true, silent = true })
keymap.set("n", "<leader>x", ":BufferClose<CR>", { desc = "Cerrar buffer actual", noremap = true, silent = true })

--lsp diagnostigs
keymap.set("n", "<leader>d", vim.diagnostic.setloclist, { desc = "Abrir diagnosticos" })

-- noice
keymap.set("n", "<leader>nl", "<cmd>NoiceLast<cr>", { desc = "Noice Last Message" })
keymap.set("n", "<leader>nh", "<cmd>NoiceHistory<cr>", { desc = "Noice Message History" })
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<cr>", { desc = "Noice Dismiss All" })
keymap.set("n", "<leader>ne", "<cmd>NoiceErrors<cr>", { desc = "Noice Show Errors" })

keymap.set("n", "<C-e>", "<END>", { nowait = true, silent = true })
keymap.set("n", "<C-b>", "<HOME>", { nowait = true, silent = true })

-- insert
keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "move end of line" })
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left", silent = true, nowait = true })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down", silent = true, nowait = true })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up", silent = true, nowait = true })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right", silent = true, nowait = true })
