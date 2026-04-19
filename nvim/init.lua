-- Cargar plugins con lazy.nvim
require("core")
require("plugins")

vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-v>", '<C-r>+', { noremap = true, silent = true })

vim.o.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  command = "set guicursor=a:ver25",
})

vim.o.wrap = false
