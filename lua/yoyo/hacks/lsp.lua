return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "pylsp", 'html', 'tailwindcss'},
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Setup pylsp LSP
      lspconfig.pylsp.setup({})

      -- Remove unwanted default LSP keymaps (optional)
      vim.keymap.del("n", "grn")
      vim.keymap.del("n", "gra")
      vim.keymap.del("n", "grr")
      vim.keymap.del("n", "gri")
      vim.keymap.del("n", "gO")

      -- Setup LSP keymaps (auto-attach to LSP buffers only)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local keymap = vim.keymap
          local lsp = vim.lsp
          local bufopts = { noremap = true, silent = true, buffer = args.buf }

          keymap.set("n", "gr", lsp.buf.references, bufopts)
          keymap.set("n", "gd", lsp.buf.definition, bufopts)
          keymap.set("n", "<space>rn", lsp.buf.rename, bufopts)
          keymap.set("n", "K", lsp.buf.hover, bufopts)
          keymap.set("n", "<space>f", function()
            lsp.buf.format({ async = true })
          end, bufopts)
        end,
      })
    end,
  },
}

