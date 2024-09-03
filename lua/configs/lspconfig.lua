-- Load NvChad default LSP configurations
require("nvchad.configs.lspconfig").defaults()
local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults()

-- Setup Mason and Mason LSPConfig
require("mason").setup()
require("mason-lspconfig").setup()

-- Define LSP servers and their specific settings
local servers = {
  -- clangd = {},
  -- pyright = {},
  -- rust_analyzer = {},
  gopls = {},
  golangci_lint_ls = {},
  html = { filetypes = { "html", "twig", "hbs" } },
  cssls = {},
  tailwindcss = {},
  emmet_ls = {},
  jsonls = {},
  yamlls = {},
  angularls = {},
  bashls = {},
  cucumber_language_server = {},
  nginx_language_server = {},
  sqlls = {},
  docker_compose_language_service = {},
  dockerls = {},
  tsserver = {},
  prismals = {},
  htmx = {},
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

-- Get capabilities and on_attach function from NvChad config
local on_attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities

-- Enable specific capability for folding ranges
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

-- Ensure the servers are installed
local mason_lspconfig = require "mason-lspconfig"

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

-- Setup handlers for each LSP server
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end,
}

-- Optionally, specify additional servers with default configs
local additional_servers = {
  "tailwindcss",
  "htmx",
  "fish_lsp",
  "bashls",
  "angularls",
  "yamlls",
}

for _, lsp in ipairs(additional_servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- If needed, configure individual servers separately
-- Example: TSServer (TypeScript)
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
