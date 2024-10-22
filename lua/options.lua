require "nvchad.options"

local o = vim.o
local g = vim.g

o.cursorlineopt = "both" -- to enable cursorline!

vim.lsp.set_log_level("off")

-- TODO: vscode format i.e json files
g.vscode_snippets_path = ""

-- TODO: snipmate format
g.snipmate_snippets_path = ""

-- TODO: lua format
g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

-- Cursor
o.cursorline = true

-- Indent
o.breakindent = true
o.smartindent = true

-- Scoll
o.scrolloff = 9

-- Number
o.nu = true

-- relative number line
o.relativenumber = true

-- wrap
o.wrap = false

-- Fold
o.foldcolumn = "0" -- '0' is not bad
o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
o.foldlevelstart = 99
o.foldenable = true
o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:>]]

-- Highligh Searched Text
-- o
o.hlsearch = false
o.incsearch = true

-- TERM COLORs
o.termguicolors = true

-- Highligh when yank
require("configs.utility").highlight_group()
