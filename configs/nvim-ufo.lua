-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself

require("ufo").setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { "treesitter", "indent" }
  end,
  enable_get_fold_virt_text = true,
  open_fold_hl_timeout = 150,
  close_fold_kinds_for_ft = { "imports", "comment" },
  preview = {
    win_config = {
      border = { "", "─", "", "", "", "─", "", "" },
      winhighlight = "Normal:Folded",
      winblend = 0,
    },
    mappings = {
      scrollU = "<C-u>",
      scrollD = "<C-d>",
      jumpTop = "[",
      jumpBot = "]",
    },
  },
}
