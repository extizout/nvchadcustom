local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  -- LSP: Nvim-lsp & Mason
  {
    "neovim/nvim-lspconfig",
    event = { "VeryLazy", "BufRead" },
    config = function()
      -- require "plugins.configs.lspconfig"
      -- require "custom.configs.lspconfig"
    end,
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = overrides.mason,
      },
      {
        "williamboman/mason-lspconfig.nvim",
        config = function()
          require "custom.configs.mason-lspconfig"
        end,
      },
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- nvim-tree fs
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
  },

  -- Better Escape
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
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

  -- Toggle Terminal
  {
    "akinsho/toggleterm.nvim",
    event = { "VeryLazy", "BufRead" },
    version = "*",
    config = function()
      require("custom.configs.toggleterm").setup()
    end,
  },

  -- nvim - ufo for fold
  {
    "kevinhwang91/nvim-ufo",
    event = { "VeryLazy", "BufRead" },
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        config = function()
          require "custom.configs.statuscol"
        end,
      },
    },
    config = function()
      require "custom.configs.nvim-ufo"
    end,
  },

  -- Bg auto change terminal color
  {
    "typicode/bg.nvim",
    lazy = false,
  },

  -- Harpoon
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    config = function()
      require "custom.configs.harpoon"
    end,
  },

  -- leap motion s{char}{char}
  {
    "ggandor/leap.nvim",
    event = { "VeryLazy", "BufRead" },
    config = function()
      require "custom.configs.leap"
    end,
  },

  { "folke/neodev.nvim", opts = {} },

  -- Oil netrw like
  {
    "stevearc/oil.nvim",
    lazy = false,
    -- opts = {},
    config = function()
      require "custom.configs.oil"
    end,
  },

  -- Better Quick Fix
  {
    "kevinhwang91/nvim-bqf",
    event = { "VeryLazy", "BufRead" },
    lazy = true,
    config = function()
      require "custom.configs.nvim-bqf"
    end,
  },

  -- TODO comment Hightlight
  {
    "folke/todo-comments.nvim",
    event = { "VeryLazy", "BufRead" },
    config = function()
      require "custom.configs.todo-comment"
    end,
  },

  -- Activity Status on Discord
  {
    "andweeb/presence.nvim",
    event = { "VeryLazy", "BufRead" },
    config = function()
      require "custom.configs.presence"
    end,
  },

  -- Smooth Scroll by C-d C-u
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = { "VeryLazy", "BufRead" },
  --   config = function()
  --     require "custom.configs.neo-scroll"
  --   end,
  -- },

  -- Multi visual Cursor
  {
    "mg979/vim-visual-multi",
  },

  {
    "utilyre/barbecue.nvim",
    event = "BufRead",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = {},
    config = function()
      require "custom.configs.barbecue"
    end,
  },

  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require "custom.configs.lualine"
  --   end,
  -- },
  --

  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;
      vim.g.copilot_tab_fallback = "";
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
      -- require "custom.configs.copilot"
    end
  },

  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require "custom.configs.copilot"
  --   end,
  --   opts = overrides.copilot,
  -- },
  --
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     {
  --       "zbirenbaum/copilot-cmp",
  --       event = { "InsertEnter" },
  --       config = function()
  --         require("copilot_cmp").setup()
  --       end,
  --       opts = overrides.copilot_cmp,
  --     },
  --   },
  --   opts = overrides.cmp,
  -- },
}

return plugins
