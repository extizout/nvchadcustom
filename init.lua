-- TODO: vscode format i.e json files
vim.g.vscode_snippets_path = ""

-- TODO: snipmate format
vim.g.snipmate_snippets_path = ""

-- TODO: lua format
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

-- Cursor
vim.o.cursorline = true

-- Indent
vim.o.breakindent = true
vim.o.smartindent = true

-- Scoll
vim.o.scrolloff = 9

-- Number
vim.o.nu = true

-- relative number line
vim.o.relativenumber = true

-- wrap
vim.o.wrap = false

-- Fold
vim.o.foldcolumn = "0" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:>]]

-- Highligh Searched Text
vim.o.hlsearch = false
vim.o.incsearch = true

-- TERM COLORs
vim.o.termguicolors = true

-- Utils Functions

-- Highligh when yank
require("custom.configs.utility").highlight_group()
