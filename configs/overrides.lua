local M = {}

M.treesitter = {
  ensure_installed = {
    "vimdoc",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "prisma",
    "tsx",
    "c",
    "go",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<a-space>',
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web develop
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettierd",
    "prettier",
    "eslint",
    -- Prisma
    "prisma-language-server",

    -- go
    "gopls",
    "glint",

    -- Docker
    "docker-compose-language-service",
    "dockerls",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- sql
    "sqls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.gitsigns = {
  -- Show Gitblame Realtime
  current_line_blame = true,
}

M.copilot = {
  -- https://github.com/zbirenbaum/copilot.lua#setup-and-configuration
  suggestion = {
    enable = false,
  },
  panel = {
    enable = false,
  },
}

M.cmp = {
  sources = {
    { name = "nvim_lsp", group_index = 2 },
    { name = "copilot",  group_index = 2 },
    { name = "luasnip",  group_index = 2 },
    { name = "buffer",   group_index = 2 },
    { name = "nvim_lua", group_index = 2 },
    { name = "path",     group_index = 2 },
  },
}

M.copilot_cmp = {
  fix_plairs = true,
}

-- M.nvterm = {
-- }

return M
