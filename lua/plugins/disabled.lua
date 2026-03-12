return {
  -- This tells LazyVim to ignore the built-in mini.surround plugin
  { "echasnovski/mini.surround", enabled = false },

  -- 1. Disable the Snacks Explorer and its default keymaps
  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     explorer = {
  --       enabled = false, -- ← this disables the sidebar explorer
  --     },
  --     picker = {
  --       sources = {
  --         explorer = {
  --           -- you can also disable just the explorer source if you want to keep other picker features
  --           enabled = false,
  --         },
  --       },
  --     },
  --   },
  -- },
}
