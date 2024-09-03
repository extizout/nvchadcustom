-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
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

M.ui = {
  transparency = false,
  cmp = {
    style = "flat_dark",
  },
  nvdash = {
    load_on_startup = false,

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

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
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

return M
