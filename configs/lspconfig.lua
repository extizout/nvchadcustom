local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "prismals", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Manually
-- lspconfig.prismals.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   -- cmd = { "prisma-language-server", "--stdio" },
--   filetypes = { "prisma" },
--   settings = {
--     prisma = {
--       prismaFmtBinPath = ""
--     },
--   }
-- }
