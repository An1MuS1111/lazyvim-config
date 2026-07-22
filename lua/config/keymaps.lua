-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode with jk or jj
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape insert mode" })
vim.keymap.set("i", "jj", "<esc>", { desc = "Escape insert mode" })
