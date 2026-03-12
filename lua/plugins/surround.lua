return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use main branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty for defaults
      })
    end,
  },
}

-- return {
--   "nvim-mini/mini.surround",
--   opts = {
--     mappings = {
--       add = "ys", -- Add surrounding in Normal and Visual modes
--       delete = "ds", -- Delete surrounding
--       replace = "cs", -- Replace (change) surrounding
--       find = "",
--       find_left = "",
--       highlight = "",
--       update_n_lines = "",
--     },
--   },
--   config = function(_, opts)
--     require("mini.surround").setup(opts)
--
--     -- Map `S` in visual mode to add surroundings
--     vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true, desc = "Add surrounding" })
--
--     -- Safely remove the visual mode `ys` mapping to fix the `y` delay
--     pcall(vim.keymap.del, "x", "ys")
--
--     -- Map `yss` to surround the entire current line
--     vim.keymap.set("n", "yss", "ys_", { remap = true, desc = "Surround current line" })
--   end,
-- }
