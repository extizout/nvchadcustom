-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_action = null_ls.builtins.code_actions

local sources = {
  formatting.prettierd.with {
    -- Filetypes for use prettier formatting.
    filetypes = { "html", "json", "yaml", "markdown", "vue", "javascript", "typescript", "jsonls" },
    -- Arg for formatting
    -- extra_args = { "--no-semi", "--jsx-single-quote" },
  },
  formatting.prettier.with {
    -- Filetypes for use prettier formatting.
    filetypes = { "typescript" },
  },
  formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
