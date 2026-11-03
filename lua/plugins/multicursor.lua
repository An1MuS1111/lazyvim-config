return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  keys = {
    -- Add or skip cursor above/below the main cursor
    {
      "<up>",
      function()
        require("multicursor-nvim").lineAddCursor(-1)
      end,
      mode = { "n", "x" },
      desc = "Add Cursor Above",
    },
    {
      "<down>",
      function()
        require("multicursor-nvim").lineAddCursor(1)
      end,
      mode = { "n", "x" },
      desc = "Add Cursor Below",
    },
    {
      "<leader><up>",
      function()
        require("multicursor-nvim").lineSkipCursor(-1)
      end,
      mode = { "n", "x" },
      desc = "Skip Cursor Above",
    },
    {
      "<leader><down>",
      function()
        require("multicursor-nvim").lineSkipCursor(1)
      end,
      mode = { "n", "x" },
      desc = "Skip Cursor Below",
    },

    -- Match word/selection: Ctrl+n / Ctrl+p to Add, Alt+s / Alt+Shift+s to Skip
    {
      "<c-n>",
      function()
        require("multicursor-nvim").matchAddCursor(1)
      end,
      mode = { "n", "x" },
      desc = "Add Cursor Matching Next",
    },
    {
      "<M-s>",
      function()
        require("multicursor-nvim").matchSkipCursor(1)
      end,
      mode = { "n", "x" },
      desc = "Skip Cursor Matching Next",
    },
    {
      "<c-p>",
      function()
        require("multicursor-nvim").matchAddCursor(-1)
      end,
      mode = { "n", "x" },
      desc = "Add Cursor Matching Prev",
    },
    {
      "<M-S>",
      function()
        require("multicursor-nvim").matchSkipCursor(-1)
      end,
      mode = { "n", "x" },
      desc = "Skip Cursor Matching Prev",
    },

    -- Disable and enable cursors
    {
      "<c-q>",
      function()
        require("multicursor-nvim").toggleCursor()
      end,
      mode = { "n", "x" },
      desc = "Toggle Cursor",
    },

    -- Mouse support
    {
      "<c-leftmouse>",
      function()
        require("multicursor-nvim").handleMouse()
      end,
      mode = "n",
      desc = "Add/Remove Cursor (Mouse)",
    },
    {
      "<c-leftdrag>",
      function()
        require("multicursor-nvim").handleMouseDrag()
      end,
      mode = "n",
      desc = "Mouse Drag Cursors",
    },
    {
      "<c-leftrelease>",
      function()
        require("multicursor-nvim").handleMouseRelease()
      end,
      mode = "n",
      desc = "Mouse Release Cursors",
    },
  },
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    -- Layer active only while multiple cursors exist
    mc.addKeymapLayer(function(layerSet)
      layerSet({ "n", "x" }, "<left>", mc.prevCursor)
      layerSet({ "n", "x" }, "<right>", mc.nextCursor)
      layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end)
    end)

    -- Custom highlight setups
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { reverse = true })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { reverse = true })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}
