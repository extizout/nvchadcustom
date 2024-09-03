require "nvchad.mappings"
local toggleterm = require "configs.toggleterm"

-- add yours here

local map = vim.keymap.set

-- General
map("i", "jk", "<ESC>", { desc = "Fast Escape" })

map("n", "n", "nzzzv", { desc = "Move to next search item" })
map("n", "N", "Nzzzv", { desc = "Move to previous search item" })

map("n", "<A-j>", "<cmd>m+<cr>")
map("n", "<A-k>", "<cmd>m-2<cr>")

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })

map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Line Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Line Up" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Buffer
map("n", "<leader>x", "<cmd> bdelete <cr>", { desc = "Close Buffer" })
map("n", "<leader>ba", "<cmd> %bd|e#|bd#<CR><cr>", { desc = "Quit Other Buffer" })

-- Telescope
map("n", "<leader>ff", "<cmd> Telescope <cr>")
map("n", "<leader><leader>", "<cmd> Telescope buffers <CR>", { desc = "Buffer" })
map("n", "<leader>?", "<cmd> Telescope oldfiles <CR>", { desc = "Resume" })

-- Oil
map("n", "<leader>oo", "<cmd> Oil <CR>", { desc = "Oil" })

-- Toggle Term
-- LazyGit
map({ "n", "t" }, "<leader>lg", function()
  toggleterm.lazygit()
end, { desc = "LazyGit" })

-- LazyDocker
map({ "n", "t" }, "<leader>ld", function()
  toggleterm.lazydocker()
end, { desc = "LazyDocker" })

-- Terminal
map({ "n", "t" }, "<C-t>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "Terminal" })

-- Copilot
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept" })

-- Harpoon
map("n", "<leader>ht", "<cmd> Telescope harpoon marks <CR>", { desc = "Harpoon Telescope Menu" })
map("n", "<leader>hp", "<cmd> lua require('harpoon.ui').toggle_quick_menu() <CR>", { desc = "Harpoon Menu" })
map(
  "n",
  "<leader>hc",
  "<cmd> lua require('harpoon.cmd-ui').toggle_quick_menu() <CR>",
  { desc = "Harpoon Command Send To Terminal" }
)
map("n", "<leader>ha", "<cmd> lua require('harpoon.mark').add_file() <CR>", { desc = "Harpoon Add" })
map("n", "]h", "<cmd> lua require('harpoon.ui').nav_next() <CR>", { desc = "Next Harpoon" })
map("n", "[h", "<cmd> lua require('harpoon.ui').nav_prev() <CR>", { desc = "Prev Harpoon" })

map("n", "<M-1>", "<cmd> lua require('harpoon.ui').nav_file(1) <CR>", { desc = "Harpoon 1" })
map("n", "<M-2>", "<cmd> lua require('harpoon.ui').nav_file(2) <CR>", { desc = "Harpoon 2" })
map("n", "<M-3>", "<cmd> lua require('harpoon.ui').nav_file(3) <CR>", { desc = "Harpoon 3" })
map("n", "<M-4>", "<cmd> lua require('harpoon.ui').nav_file(4) <CR>", { desc = "Harpoon 4" })
map("n", "<M-5>", "<cmd> lua require('harpoon.ui').nav_file(5) <CR>", { desc = "Harpoon 5" })

-- Todo Comments
map("n", "<leader>tf", "<cmd>:TodoQuickFix <CR>", { desc = "TodoQuickFix" })
map("n", "<leader>tt", "<cmd>:TodoTelescope <CR>", { desc = "TodoTelescope" })

-- UFO FOLD
map("n", "zR", "<cmd>lua require('ufo').openAllFolfs()<CR>", { desc = "Open All Folds" })
map("n", "zM", "<cmd>lua require('ufo').closeAllFolfs()<CR>", { desc = "Close All Folds" })
map("n", "zr", "<cmd>lua require('ufo').openFoldsExceptKinds()<CR>", { desc = "Open Fold" })
map("n", "zm", "<cmd>lua require('ufo').closeFoldsWith()<CR>", { desc = "Close Fold" })

-- GitSign
map("n", "[c", function()
  if vim.wo.diff then
    return "[c"
  end
  vim.schedule(function()
    require("gitsigns").prev_hunk()
  end)
  return "<Ignore>"
end, { desc = "Previous Hunk" })

map("n", "]c", function()
  if vim.wo.diff then
    return "]c"
  end
  vim.schedule(function()
    require("gitsigns").next_hunk()
  end)
  return "<Ignore>"
end, { desc = "Next Hunk" })

-- multiple modes
map({ "i", "n" }, "<C-k>", "<Up>", { desc = "Move up" })

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
-- Disable nvterm
nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap("n", "<leader>b")
