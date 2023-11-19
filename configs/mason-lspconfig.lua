require("mason").setup()
require("mason-lspconfig").setup()

local servers = {
  -- clangd = {},
  gopls = {},
  golangci_lint_ls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  html = { filetypes = { "html", "twig", "hbs" } },
  cssls = {},
  -- cssmodules_ls = {},
  -- eslint = {},
  emmet_ls = {},
  -- grammarly = {},
  jsonls = {},
  -- quick_lint_js = {},
  sqlls = {},
  docker_compose_language_service = {},
  dockerls = {},
  tsserver = {},
  prismals = {},
  volar = {},
  lua_ls = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

-- Ensure the servers above are installed
local mason_lspconfig = require "mason-lspconfig"

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end,
}
