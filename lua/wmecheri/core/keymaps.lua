# keymaps and remaps

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>po", vim.cmd.Ex)
-- Remap 'w' to 'z' in normal mode
vim.api.nvim_set_keymap('n', 'b', 'z', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'b', 'z', { noremap = true, silent = true })

-- Remap 'z' to 'w' in normal mode
vim.api.nvim_set_keymap('n', 'z', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'z', 'b', { noremap = true, silent = true })


