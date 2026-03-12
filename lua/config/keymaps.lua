-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Disable Shift + J (Join lines) in Normal mode
-- vim.keymap.set("n", "J", "<Nop>", { desc = "Disable Join Lines" })

-- Exit insert mode with jk or jj
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape insert mode" })
vim.keymap.set("i", "jj", "<esc>", { desc = "Escape insert mode" })

-- Exit terminal mode using 'jj'
vim.keymap.set("t", "jj", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- 1. VISUAL MODE: Move selected block up and down
-- The 'gv=gv' part keeps the text selected and auto-fixes the indentation after moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })

-- 2. NORMAL MODE: Move current line up and down
-- The '==' part auto-fixes the indentation of the line after moving
-- vim.keymap.set("n", "J", "<cmd>m .+1<CR>==", { desc = "Move Line Down" })
-- vim.keymap.set("n", "K", "<cmd>m .-2<CR>==", { desc = "Move Line Up" })
