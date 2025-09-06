-- Load NvChad default LSP configurations
local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local lspconfig = require "lspconfig"
local util = require "lspconfig.util"

-- Mason
require("mason").setup()
local mason_lspconfig = require "mason-lspconfig"

-- Define LSP servers and their specific settings
local servers = {
  -- clangd = {},
  -- pyright = {},
  -- rust_analyzer = {},
  gopls = {},
  -- golangci_lint_ls = {},
  html = { filetypes = { "html", "twig", "hbs" } },
  cssls = {},
  -- tailwindcss = {},
  rust_analyzer = {},
  emmet_ls = {},
  jsonls = {},
  yamlls = {},
  -- angularls = {},
  bashls = {},
  cucumber_language_server = {},
  nginx_language_server = {},
  sqlls = {},
  docker_compose_language_service = {},
  dockerls = {},
  ts_ls = { filetypes = { "javascript", "typescript", "typescriptreact" } },
  prismals = {},
  -- htmx = { filetypes = { "html" } },
  lua_ls = {
    Lua = {
      diagnostics = { globals = { "vim" } },
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
    local cfg = servers[server_name] or {}
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = cfg,            -- for servers that use `settings`
      filetypes = cfg.filetypes, -- pass through if you set them
      root_dir = cfg.root_dir,   -- pass through if you set one
      single_file_support = cfg.single_file_support,
    }
  end,
}
