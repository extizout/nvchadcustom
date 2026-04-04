return {
  config = vim.fn.stdpath("config") .. "/mcp.json",
  auto_approve = false,
  use_bundled_binary = true,
  extensions = {
    avante = true,
  },
}
