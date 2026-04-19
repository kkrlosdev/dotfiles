-- Opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Mapas útiles
vim.keymap.set("i", "jk", "<Esc>")

-- Resaltado automático
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
