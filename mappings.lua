local toggleterm = require "custom.configs.toggleterm"

---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-s>"] = "",
    ["gi"] = "",
    ["<ESC>"] = "",
  },
}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["n"] = { "nzz", "next search word | focus", opts = { nowait = true } },
    ["N"] = { "Nzz", "prev search word | focus", opts = { nowait = true } },
    ["<A-j>"] = { "<cmd>m+<cr>", " ", opts = { nowait = true } },
    ["<A-k>"] = { "<cmd>m-2<cr>", " ", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", "Move down with change focus", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Move up with change focus", opts = { nowait = true } },
    ["<leader>p"] = { [["_dP]], "Delete and paste", opts = { nowait = true } },
    ["gI"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },
  },
  v = {
    ["<"] = { "<gv", "Indent Line" },
    [">"] = { ">gv", "indent Line" },
    -- ["<A-j>"] = { "><cmd>m+1<CR>gv=gv", " ", opts = { nowait = true } },
    -- ["<A-k>"] = { "<<cmd>m-2<CR>gv=gv", " ", opts = { nowait = true } },
    ["J"] = { ":move '>+1<CR>gv-gv", " ", opts = { nowait = true } },
    ["K"] = { ":move '<-2<CR>gv-gv", " ", opts = { nowait = true } },
    ["<A-j>"] = { ":move '>+1<CR>gv=gv", " ", opts = { nowait = true } },
    ["<A-k>"] = { ":move '<-2<CR>gv=gv", " ", opts = { nowait = true } },
  },
  t = {},
}

M.telescope = {
  n = {
    ["<leader><leader>"] = {
      "<cmd> Telescope buffers <CR>",
      "Buffer",
      opts = { nowait = true },
    },
    ["<leader>?"] = {
      -- "<cmd>lua require('telescope.builtin').resume() <CR>",
      "<cmd> Telescope oldfiles <CR>",
      "Resume",
      opts = { nowait = true },
    },
    -- ["gr"] = {
    --   -- "<cmd>lua require('telescope.builtin').resume() <CR>",
    --   "<cmd> Telescope lsp_references <CR>",
    --   "Go to References",
    --   opts = { nowait = true },
    -- },
  },
}

M.buffer = {
  n = {
    ["<leader>x"] = { "<cmd> bdelete <CR>", "Close Buffer", opts = { nowait = true } },
  },
}

M.git = {
  n = {
    ["<leader>lg"] = { "<cmd>lua LAZYGIT_TOGGLE()<CR>", "LazyGit", opts = { nowait = true } },
    ["<leader>ld"] = { "<cmd>lua LAZYDOCKER_TOGGLE()<CR>", "LazyDocker", opts = { nowait = true } },
  },
}

M.fold = {
  n = {
    ["zR"] = { "<cmd>lua require('ufo').openAllFolds()<CR>", "openAllFolds", opts = { nowait = true } },
    ["zM"] = { "<cmd>lua require('ufo').closeAllFolds()<CR>", "closeAllFolds", opts = { nowait = true } },
    ["zr"] = { "<cmd>lua require('ufo').openFoldsExceptKinds()<CR>", "openFoldsExceptKinds", opts = { nowait = true } },
    ["zm"] = { "<cmd>lua require('ufo').closeFoldsWith()<CR>", "closeFoldsWith", opts = { nowait = true } },
  },
}

M.harpoon = {
  n = {
    ["<leader>ht"] = { "<cmd> Telescope harpoon marks <CR>", "Harpoon Telescope Menu" },
    ["<leader>hp"] = { "<cmd> lua require('harpoon.ui').toggle_quick_menu() <CR>", "Harpoon Menu" },
    ["<leader>hc"] = {
      "<cmd> lua require('harpoon.cmd-ui').toggle_quick_menu() <CR>",
      "Harpoon Commend Send to Terminal",
    },
    ["<leader>ha"] = { "<cmd> lua require('harpoon.mark').add_file() <CR>", "Harpoon Add" },
    ["]h"] = { "<cmd> lua require('harpoon.ui').nav_next() <CR>", "Next Harpoon" },
    ["[h"] = { "<cmd> lua require('harpoon.ui').nav_prev() <CR>", "Prev Harpoon" },
    -- Linux
    -- ["<leader>1"] = { "<cmd> lua require('harpoon.ui').nav_file(1) <CR>", "Harpoon 1" },
    -- ["<leader>2"] = { "<cmd> lua require('harpoon.ui').nav_file(2) <CR>", "Harpoon 2" },
    -- ["<leader>3"] = { "<cmd> lua require('harpoon.ui').nav_file(3) <CR>", "Harpoon 3" },
    -- ["<leader>4"] = { "<cmd> lua require('harpoon.ui').nav_file(4) <CR>", "Harpoon 4" },
    -- ["<leader>5"] = { "<cmd> lua require('harpoon.ui').nav_file(5) <CR>", "Harpoon 5" },
    ["<M-1>"] = { "<cmd> lua require('harpoon.ui').nav_file(1) <CR>", "Harpoon 1" },
    ["<M-2>"] = { "<cmd> lua require('harpoon.ui').nav_file(2) <CR>", "Harpoon 2" },
    ["<M-3>"] = { "<cmd> lua require('harpoon.ui').nav_file(3) <CR>", "Harpoon 3" },
    ["<M-4>"] = { "<cmd> lua require('harpoon.ui').nav_file(4) <CR>", "Harpoon 4" },
    ["<M-5>"] = { "<cmd> lua require('harpoon.ui').nav_file(5) <CR>", "Harpoon 5" },
  },
}

M.Leap = {
  n = {},
  i = {},
  t = {},
}

M.Oil = {
  n = {
    ["<leader>oo"] = { "<cmd> Oil <CR>", "Oil.nvim File Explorer" },
  },
}

M.todo = {
  n = {
    ["<leader>tf"] = { "<cmd>:TodoQuickFix <CR>", "TodoQuickFix" },
    ["<leader>tt"] = { "<cmd>:TodoTelescope <CR>", "TodoTelescope" },
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
    },
  },
}

M.dbee = {
  n = {
    ["<leader>db"] = { "<cmd>DBUIToggle<CR>", "OpenDB", opts = { nowait = true } },
    ["<leader>de"] = { "<cmd>lua require('dbee').execute(query)<CR>", "Run Query", opts = { nowait = true } },
    ["<leader>ds"] = {
      "<cmd>lua require('dbee').store(format, output, opts)<CR>",
      "Store The Current Result",
      opts = { nowait = true },
    },
  },
}

M.conform = {
  n = {
    ["<leader>fm"] = {
      function()
        -- vim.lsp.buf.format { async = true }
        require("conform").format { async = true, lsp_fallback = true }
      end,
      "Conform Format",
    },
  },
}

M.copilotChat = {
  n = {
    ["<leader>mc"] = {
      function()
        local chat = require "CopilotChat"
        chat.toggle()
      end,
      "CopilotChat - Chat",
    },
    ["<leader>ms"] = {
      function()
        local chat = require "CopilotChat"
        chat.reset()
      end,
      "CopilotChat - Reset",
    },
  },
}

-- more keybinds!

function LAZYGIT_TOGGLE()
  toggleterm.lazygit()
end

function LAZYDOCKER_TOGGLE()
  toggleterm.lazydocker()
end

return M
