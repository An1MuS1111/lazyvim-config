return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      preset = "powerline",
      options = {
        add_messages = {
          display_count = true,
        },
        multilines = {
          enabled = true,
        },
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
