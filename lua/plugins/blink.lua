-- return {
--   {
--     "saghen/blink.cmp",
--     opts = {
--       keymap = {
--         -- This gives you the super-tab behavior you are looking for
--         preset = "super-tab",
--         -- This ensures Enter also accepts the completion, or falls back to a normal Enter keypress
--         ["<CR>"] = { "accept", "fallback" },
--       },
--       completion = {
--         ghost_text = { enabled = false },
--         documentation = { auto_show = false },
--       },
--     },
--   },
-- }

return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
        ["<CR>"] = { "accept", "fallback" },
      },
      completion = {
        ghost_text = { enabled = false },
        -- 1. Enable the documentation window
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        -- 2. Ensure the menu shows the type details (like "struct")
        menu = {
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 }, -- This adds the Go type info
              { "kind" },
            },
          },
        },
      },
    },
  },
}
