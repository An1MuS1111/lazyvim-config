-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("rust_disable_single_quote_pairs", { clear = true }),
  pattern = "rust",
  callback = function()
    -- Overrides mini.pairs behavior to only insert a single quote
    vim.keymap.set("i", "'", "'", { buffer = 0 })
  end,
  desc = "Disable single quote autopairs in Rust (lifetimes)",
})
