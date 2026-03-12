return {
  {
    -- Gruvbox theme
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = false,
      contrast = "soft",
      -- Disable italics for Gruvbox
      overrides = {
        ["@comment"] = { italic = false },
        ["@keyword"] = { italic = false },
        ["@parameter"] = { italic = false },
        ["@type"] = { italic = false },
      },
    },
  },

  {
    -- Catppuccin theme
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      -- This is the simplest way to disable all italics in Catppuccin
      no_italic = true,
      styles = {
        comments = {}, -- Ensures no styles are applied
        keywords = {},
        conditionals = {},
        loops = {},
        functions = {},
        variables = {},
        strings = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
