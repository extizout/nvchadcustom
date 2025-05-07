require("cord").setup {
  usercmds = true, -- Enable user commands
  log_level = "error", -- One of 'trace', 'debug', 'info', 'warn', 'error', 'off'
  timer = {
    interval = 1500, -- Interval between presence updates in milliseconds (min 500)
    reset_on_idle = false, -- Reset start timestamp on idle
    reset_on_change = false, -- Reset start timestamp on presence change
  },
  editor = {
    -- icon = "",
    client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
    tooltip = "Stealth Mode", -- Text to display when hovering over the editor's image
  },
  display = {
    theme = "catppuccin",
    flavor = "dark",
    swap_fields = false, -- If enabled, workspace is displayed first
    swap_icons = false, -- If enabled, editor is displayed on the main image

    show_time = true, -- Display start timestamp
    show_repository = true, -- Display 'View repository' button linked to repository url, if any
    show_cursor_position = true, -- Display line and column number of cursor's position
    workspace_blacklist = { "Me" }, -- List of workspace names to hide
  },
  timestamp = {
    enabled = true,
    reset_on_idle = false,
    reset_on_change = false
  },
  lsp = {
    show_problem_count = false, -- Display number of diagnostics problems
    severity = 1, -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
    scope = "workspace", -- buffer or workspace
  },
  idle = {
    enable = true, -- Enable idle status
    timeout = 300000, -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
    show_status = true, -- Display idle status, disable to hide the rich presence on idle
    disable_on_focus = false, -- Do not display idle status when neovim is focused
    smart_idle = true,
    details = "Idle", -- Text to display when idle
    state = nil,
    tooltip = "💤", -- Text to display when hovering over the idle image
    -- icon = ""
  },
  text = {
    workspace = "In {}", -- Text to display when in a workspace (Empty string to disable)
    viewing = "Viewing {}", -- Text to display when viewing a readonly file
    editing = "Editing {}", -- Text to display when editing a file
    file_browser = "Browsing files in {}", -- Text to display when browsing files (Empty string to disable)
    plugin_manager = "Managing plugins in {}", -- Text to display when managing plugins (Empty string to disable)
    lsp = "Configuring LSP in {}", -- Text to display when managing LSP servers (Empty string to disable)
    vcs = "Committing changes in {}", -- Text to display when using Git or Git-related plugin (Empty string to disable)
    docs = "Reading {}",
    notes = "Taking notes in {}",
    terminal = "Running commands in {}"
  },
  buttons = {
    -- {
    --   label = "View Repository", -- Text displayed on the button
    --   url = "git", -- URL where the button leads to ('git' = automatically fetch Git repository URL)
    -- }
  },
  assets = nil, -- Custom file icons, see the wiki*
  -- assets = {
  --   lazy = {                                 -- Vim filetype or file name or file extension = table or string
  --     name = 'Lazy',                         -- Optional override for the icon name, redundant for language types
  --     icon = 'https://example.com/lazy.png', -- Rich Presence asset name or URL
  --     tooltip = 'lazy.nvim',                 -- Text to display when hovering over the icon
  --     type = 2,                              -- 0 = language, 1 = file browser, 2 = plugin manager, 3 = lsp manager, 4 = vcs; defaults to language
  --   },
  --   ['Cargo.toml'] = 'crates',
  -- },
}
