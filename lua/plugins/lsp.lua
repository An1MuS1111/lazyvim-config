return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      preset = "powerline",
      signs = {
        left_count = "[",
        right_count = "]",
      },
      hi = {
        error = "DiagnosticError",
        warn = "DiagnosticWarn",
        info = "DiagnosticInfo",
        hint = "DiagnosticHint",
        arrow = "NonText",
        background = "CursorLine", -- or define a custom hex/group
      },
      options = {
        -- Omit severity entirely (or list all 4) so warnings and hints get their own colors
        severity = {
          vim.diagnostic.severity.ERROR,
          vim.diagnostic.severity.WARN,
          vim.diagnostic.severity.INFO,
          vim.diagnostic.severity.HINT,
        },
        add_messages = {
          display_count = true,
        },
        multilines = {
          enabled = true,
        },
        -- Show all diagnostic severities present on the current line
        show_all_diags_on_cursorline = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
