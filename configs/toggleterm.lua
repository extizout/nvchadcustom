-- local status_ok, toggleterm = pcall(require, "toggleterm")
-- if not status_ok then
--   return
-- end

local M = {}

-- Setup function
M.setup = function()
  require("toggleterm").setup {
    -- Map for toggle terminal (previous opened terminal)
    open_mapping = [[<c-t>]],
    -- Default size of terminal
    size = 5,
    direction = "horizontal",
    float_opts = {
      border = "curved",
    },
  }
end

-- lazygit_toggle
M.lazygit = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new {
    -- cmd = "lazygit --use-config-file=$HOME/.config/lazygit/config.yml",
    cmd = 'lazygit',
    direction = "float",
    hidden = true,
    count = 5,
    on_open = function(term)
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    on_close = function()
      vim.cmd "startinsert!"
    end,
  }
  lazygit:toggle()
end

-- lazydocker_toggle
M.lazydocker = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazydocker = Terminal:new {
    cmd = "lazydocker",
    direction = "float",
    hidden = true,
    count = 6,
    on_open = function(term)
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    on_close = function()
      vim.cmd "startinsert!"
    end,
  }
  lazydocker:toggle()
end

return M
