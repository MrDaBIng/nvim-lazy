local explorer_opts = {
  win = {
    list = {
      keys = {
        ["o"] = "confirm",
      },
    },
  },
}

local M = {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- explorer = { enabled = true },
    picker = {
      sources = {
        explorer = explorer_opts,
      },
    },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    scroll = { enabled = false },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
}

return M
