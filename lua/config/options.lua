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

if vim.g.neovide then
  -- Neovide specific configuration
  vim.o.guifont = "FiraCode Nerd Font:h14" -- Adjust font and size as needed
  vim.g.neovide_transparency = 0.9 -- 0.0 is fully transparent, 1.0 is opaque
  vim.g.neovide_normal_opacity = 0.85
  vim.g.neovide_cursor_animation_length = 0.13

  vim.g.neovide_window_blurred = true
end

-- Clipboard configuration for WSL:
-- Prefer wl-clipboard (WSLg) for instant zero-lag bidirectional syncing.
-- Strips Windows \r carriage returns on paste. Fallbacks to win32yank if needed.
if vim.fn.has("wsl") == 1 then
  if vim.fn.executable("wl-copy") == 1 then
    vim.g.clipboard = {
      name = "wl-clipboard",
      copy = {
        ["+"] = "wl-copy --type text/plain",
        ["*"] = "wl-copy --primary --type text/plain",
      },
      paste = {
        ["+"] = { "sh", "-c", "wl-paste --no-newline | tr -d '\\r'" },
        ["*"] = { "sh", "-c", "wl-paste --primary --no-newline | tr -d '\\r'" },
      },
      cache_enabled = 1,
    }
  elseif vim.fn.executable("win32yank.exe") == 1 then
    vim.g.clipboard = {
      name = "win32yank-wsl",
      copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
      },
      paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
      },
      cache_enabled = 1,
    }
  end
end
