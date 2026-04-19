local M = {}

M.instructions_file = "avante.md"
M.provider = "codex"

M.providers = {
  claude = {
    endpoint = "https://api.anthropic.com",
    model = "claude-sonnet-4-20250514",
    timeout = 30000,
    extra_request_body = {
      temperature = 0.75,
      max_tokens = 20480,
    },
  },
  moonshot = {
    endpoint = "https://api.moonshot.ai/v1",
    model = "kimi-k2-0711-preview",
    timeout = 30000,
    extra_request_body = {
      temperature = 0.75,
      max_tokens = 32768,
    },
  },
  openai = {
    endpoint = "https://api.anthropic.com",
    model = "claude-sonnet-4-20250514",
    timeout = 30000,
    extra_request_body = {
      temperature = 0.75,
      max_tokens = 20480,
    },
  },
}

M.acp_providers = {
  codex = {
    command = "npx",
    args = { "@zed-industries/codex-acp" },
    env = {
      NODE_NO_WARNINGS = "1",
      OPENAI_API_KEY = os.getenv "OPENAI_API_KEY",
    },
  },
}

M.dependencies = {
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  "nvim-mini/mini.pick",
  "nvim-telescope/telescope.nvim",
  "hrsh7th/nvim-cmp",
  "ibhagwan/fzf-lua",
  "stevearc/dressing.nvim",
  "folke/snacks.nvim",
  "nvim-tree/nvim-web-devicons",
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        embed_image_as_base64 = false,
        prompt_for_file_name = false,
        drag_and_drop = {
          insert_mode = true,
        },
        use_absolute_path = true,
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
    },
    ft = { "markdown", "Avante" },
  },
}

return M
