return {
  {
    "neovim/nvim-lspconfig",
    ft = { "python" },
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Pyright: completions, jump-to-def, etc. (no strict type checking)
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
              diagnosticMode = "openFilesOnly",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              reportMissingImports = false,
              reportMissingTypeStubs = false,
            },
          },
        },
      })

      -- Pylsp: formatting only (black + isort), no diagnostics
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              black = { enabled = true, line_length = 96 },
              isort = { enabled = true, profile = "black" },

              -- disable all linting/diagnostic tools
              pyflakes = { enabled = false },
              pylint = { enabled = false },
              ruff = { enabled = false },
              mccabe = { enabled = false },
              pydocstyle = { enabled = false },
              autopep8 = { enabled = false },
              yapf = { enabled = false },
              flake8 = { enabled = false },
            },
          },
        },
        on_attach = function(client)
          -- Disable all features except formatting
          client.server_capabilities.hoverProvider = false
          client.server_capabilities.definitionProvider = false
          client.server_capabilities.referencesProvider = false
          client.server_capabilities.documentSymbolProvider = false
        end,
      })
    end,
  },
}
