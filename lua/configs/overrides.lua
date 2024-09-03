local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "fish",
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
}

M.gitsigns = {
  -- Show Gitblame Realtime
  current_line_blame = true,
}

M.nvimtree = {
  auto_open = 1,
  update_focused_file = {
    enable = true,
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

return M
