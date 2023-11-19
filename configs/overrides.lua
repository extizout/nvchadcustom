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

-- M.nvterm = {
-- }

return M
