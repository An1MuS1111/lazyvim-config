return {
  -- 1. Configure Tinymist LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {
          settings = {
            exportPdf = "onSave", -- Automatically export .pdf on save
            outputPath = "$root/$dir/$name", -- Saves PDF alongside the .typ file
            formatterMode = "typstyle",
          },
        },
      },
    },
  },

  -- 2. Configure Live Preview (Dark mode & preview options)
  {
    "chomosuke/typst-preview.nvim",
    opts = {
      -- Dark mode preview: pass JSON string
      invert_colors = '{"rest": "auto", "image": "never"}',
      -- Or simply: invert_colors = "auto",
    },
  },

  -- 3. Ensure tools stay installed via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "tinymist",
        "typstyle",
      },
    },
  },
}
