return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- This gives you the super-tab behavior you are looking for
        preset = "super-tab",
        -- This ensures Enter also accepts the completion, or falls back to a normal Enter keypress
        ["<CR>"] = { "accept", "fallback" },
      },
      completion = {
        ghost_text = { enabled = false },
        documentation = { auto_show = false },
      },
    },
  },
}
