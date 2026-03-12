return {
  "folke/flash.nvim",
  keys = {
    -- Disable the default 'S' mapping so mini.surround can use it
    { "S", mode = { "n", "x", "o" }, false },

    -- Remap the Flash Treesitter Jump to 'gS'
    {
      "gS",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
  },
}
