---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "rosepine",
  transparency = false,
  cmp = {
    style = "flat_dark",
  },
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
  tabufline = {
    enabled = false
  },

  hl_override = highlights.override,

  hl_add = highlights.add,
}

-- check core.plugins for table structure
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
