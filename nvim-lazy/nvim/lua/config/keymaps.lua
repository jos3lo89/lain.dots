-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("i", "<C-b>", "<C-o>de")

keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Abrir directorio" })
keymap.set("n", "_", "<CMD>Oil --float<CR>", { desc = "Abrir directorio en ventana flotante" })

keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Siguiente buffer" })
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Buffer anterior" })
keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Cerrar buffer actual" })

keymap.set("n", "<C-e>", "<END>", { nowait = true, silent = true })
keymap.set("n", "<C-b>", "<HOME>", { nowait = true, silent = true })

keymap.set("v", "<", "<gv", { desc = "Reducir indentación", noremap = true, silent = true })
keymap.set("v", ">", ">gv", { desc = "Aumentar indentación", noremap = true, silent = true })

keymap.set("n", "<Leader>w", ":w<CR>", { desc = "Guardar archivo", noremap = true, silent = true })
keymap.set("n", "<Leader>q", ":q<CR>", { desc = "Cerrar archivo", noremap = true, silent = true })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover línea abajo", noremap = true, silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover línea arriba", noremap = true, silent = true })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Seleccionar todo", noremap = true, silent = true })
keymap.set("n", "<Leader>|", ":vsplit<CR>", { desc = "Split vertical", noremap = true, silent = true })
keymap.set("n", "<Leader>-", ":split<CR>", { desc = "Split horizontal", noremap = true, silent = true })

keymap.set("n", "<Leader>h", "<C-w>h", { desc = "Ir al split izquierdo", noremap = true, silent = true })
keymap.set("n", "<Leader>j", "<C-w>j", { desc = "Ir al split inferior", noremap = true, silent = true })
keymap.set("n", "<Leader>k", "<C-w>k", { desc = "Ir al split superior", noremap = true, silent = true })
keymap.set("n", "<Leader>l", "<C-w>l", { desc = "Ir al split derecho", noremap = true, silent = true })
