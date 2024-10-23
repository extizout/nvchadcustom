local overrides = require "configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
    dependencies = {
      {
        "williamboman/mason.nvim",
      },
      {
        "williamboman/mason-lspconfig.nvim",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
      config = function()
        require "configs.treesitter-context"
      end,
    },
  },

  -- GitSign
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
  },

  -- Oil netrw like
  {
    "stevearc/oil.nvim",
    lazy = false,
    -- opts = {},
    config = function()
      require "configs.oil"
    end,
  },

  -- Nvim Tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Discord
  {
    "vyfor/cord.nvim",
    build = "./build",
    event = "VeryLazy",
    opts = {},
    config = function()
      require "configs.cord"
    end,
  },

  -- Toggle Term
  {
    "akinsho/toggleterm.nvim",
    event = { "VeryLazy", "BufRead" },
    version = "*",
    config = function()
      require("configs.toggleterm").setup()
    end,
  },

  -- Better Quick Fix
  {
    "kevinhwang91/nvim-bqf",
    event = { "VeryLazy", "BufRead" },
    lazy = true,
    config = function()
      require "configs.nvim-bqf"
    end,
  },

  -- TODO comment Hightlight
  {
    "folke/todo-comments.nvim",
    event = { "VeryLazy", "BufRead" },
    config = function()
      require "configs.todo-comment"
    end,
  },

  -- Nvim Surround ys{motion}
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- Harpoon
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    config = function()
      require "configs.harpoon"
    end,
  },

  -- leap motion s{char}{char}
  {
    "ggandor/leap.nvim",
    event = { "VeryLazy", "BufRead" },
    config = function()
      require "configs.leap"
    end,
  },

  { "folke/neodev.nvim", opts = {} },

  -- Go Lib
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },

  -- Hard Time - Force to use vim motion eff
  {
    "m4xshen/hardtime.nvim",
    event = { "BufRead" },
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.hard-time"
    end,
  },

  -- Copilot

  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
      -- require "custom.configs.copilot"
    end,
  },

  -- Copilot Chat

  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   version = "canary",
  --   dependencies = {
  --     { "github/copilot.vim" },
  --   },
  --   config = function()
  --     require "configs.copilot-chat"
  --   end,
  -- },

  -- nvim - ufo for fold
  {
    "kevinhwang91/nvim-ufo",
    event = { "VeryLazy", "BufRead" },
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        config = function()
          require "configs.statuscol"
        end,
      },
    },
    config = function()
      require "configs.nvim-ufo"
    end,
  },

  -- Multi visual Cursor
  {
    "mg979/vim-visual-multi",
  },
}

return plugins
