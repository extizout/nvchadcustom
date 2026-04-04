return {
  provider = "copilot",
  auto_suggestions_provider = "copilot",
  behaviour = {
    auto_set_keymaps = true,
    auto_set_highlight_group = true,
    auto_suggestions = false,
    support_paste_from_clipboard = true,
  },
  mappings = {
    ask = "<leader>aa",
    edit = "<leader>ae",
    refresh = "<leader>ar",
    stop = "<leader>as",
  },
  windows = {
    position = "right",
    wrap = true,
    width = 35,
  },
  hints = {
    enabled = true,
  },
  selector = {
    provider = "snacks",
  },
}
