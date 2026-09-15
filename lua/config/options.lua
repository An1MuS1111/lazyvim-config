-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8

-- Ensure Apple Clang uses Xcode's SDK
if vim.fn.has("mac") == 1 and not vim.env.SDKROOT then
  local sdk = vim.fn.system("xcrun --sdk macosx --show-sdk-path 2>/dev/null"):gsub("%s+", "")
  if sdk ~= "" then
    vim.env.SDKROOT = sdk
  end
end
