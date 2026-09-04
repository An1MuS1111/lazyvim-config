local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "olimorris/onedarkpro.nvim",
      priority = 1000, -- Ensure it loads before everything else
    },
    {
      "slugbyte/lackluster.nvim",
      lazy = false,
      priority = 1000, -- or "lackluster" / "lackluster-hack" / "lackluster-mint"
    },
    {
      "ellisonleao/gruvbox.nvim",
      priority = 1000, -- Make sure it loads first
      config = true,
      opts = {
        -- Optional: Add any gruvbox-specific options here
        contrast = "", -- options: "hard", "soft", or "" (default)
        transparent_mode = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
          definitions = false,
        },
      },
    },
    -- {
    --   "sainnhe/gruvbox-material",
    --   lazy = false,
    --   priority = 1000,
    --   config = function()
    --     vim.g.gruvbox_material_background = "soft" -- options: 'hard', 'medium', 'soft'
    --     vim.g.gruvbox_material_enable_italic = true
    --   end,
    -- },
    {
      "folke/tokyonight.nvim",
      opts = {
        styles = {
          -- Set italic to false for whatever groups you want to disable
          comments = { italic = false },
          keywords = { italic = false },
          functions = { italic = false },
          variables = { italic = false },
          -- If you want to absolutely disable italics everywhere,
          -- you can also add 'identifiers = { italic = false }'
        },
      },
    },
    {
      "datsfilipe/vesper.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        transparent = false, -- Set to true if you want a transparent background
        italics = {
          comments = true,
          keywords = true,
          functions = true,
          strings = true,
          variables = true,
        },
      },
    },
    {
      "Mofiqul/vscode.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        transparent = false,
        italic_comments = true,
        italic_inlayhints = true,
        underline_links = true,
        disable_nvimtree_bg = true,
      },
    },
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = "gruvbox",
      },
    },
    -- Support for typescript
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- Support for rust
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "lazyvim.plugins.extras.lang.cmake" },
    -- { import = "lazyvim.plugins.extras.lang.dap.core" },
    { import = "lazyvim.plugins.extras.lang.java" },
    { import = "lazyvim.plugins.extras.lang.typst" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "habamax", "gruvbox" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
