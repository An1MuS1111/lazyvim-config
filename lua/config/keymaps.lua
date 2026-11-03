-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode with jk or jj
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape insert mode" })
vim.keymap.set("i", "jj", "<esc>", { desc = "Escape insert mode" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

if vim.fn.has("linux") == 1 then
  vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete word backwards (Linux)" })
end

-- if vim.fn.has("wsl") == 1 then
--   -- Force Ctrl + v to enter Visual Block mode (overriding any paste mappings)
--   vim.keymap.set("n", "<C-v>", "<C-v>", { desc = "Visual block mode" })
--   vim.keymap.set("v", "<C-v>", "<C-v>", { desc = "Visual block mode" })
-- end
