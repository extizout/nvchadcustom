local M = {}

-- highlight while yanking
function M.highlight_group()
  local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
  vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
      vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
  })
end

function M.autoCmds()
  local autocmd = vim.api.nvim_create_autocmd

  autocmd("VimEnter", {
    command = ":silent !kitty @ set-spacing padding=0 margin=0",
  })

  autocmd("VimLeavePre", {
    command = ":silent !kitty @ set-spacing padding=20 margin=10",
  })

  autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
      local line = vim.fn.line "'\""
      if
          line > 1
          and line <= vim.fn.line "$"
          and vim.bo.filetype ~= "commit"
          and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
      then
        vim.cmd 'normal! g`"'
      end
    end,
  })
end

return M
