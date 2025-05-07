-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  transparency = false,
  theme = "bearded-arc",
  integrations = {
    "blankline",
    "cmp",
    "git",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    -- Pmenu = { bg = "white" },
    -- Pmenu = { bg = "#ffffff" }, this works too
    --
    -- -- if you want to lighten or darken color
    -- -- this will use the black color from nvchad theme & lighten it by 2x
    -- -- use a negative number to darken it
    -- Normal = {
    --   bg = { "black", 1 },
    -- },
    --
    -- MyHighlightGroup = { -- custom highlights are also allowed
    --   fg = "red",
    --   bg = "darker_black",
    -- },
  },
}

M.nvdash = {
  load_on_startup = true,


  header = {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
  },
}

M.ui = {
  cmp = {
    style = "flat_dark",
  },
  telescope = {
    style = "bordered",
  },

  tabufline = {
    enabled = false,
    --  more opts
    order = { "treeOffset", "buffers", "tabs", "btns", "abc" },
    modules = {
      -- The default abc module is override
      abc = function()
        return "Powered by Poom  "
      end,
    },
  },

  statusline = {
    -- more opts
    --
    -- local orders = {
    --   default = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    --   vscode = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd" },
    -- }
    -- order = { ... }, -- check stl/utils.lua file in ui repo
    -- modules = {
    --   -- The default cursor module is override
    --   cursor = function()
    --     return "%#BruhHl#" .. " bruh " -- the highlight group here is BruhHl,
    --   end,
    -- },

    -- Separator style and theme
    theme = "default",
    separator_style = "arrow",
  },
}
M.term = {
  sizes = { sp = 0.3, vsp = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

return M
