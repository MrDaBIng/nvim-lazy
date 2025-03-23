local tokyonight = {
  "folke/tokyonight.nvim",
  init = function()
    vim.cmd([[colorscheme tokyonight-storm]])
  end,
}

local lualine = {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
  opts = {
    theme = "tokyonight-storm",
  },
}

local navic = {
  "SmiteshP/nvim-navic",
  opts = {
    theme = "tokyonight-storm",
  },
}
return {
  tokyonight,
  lualine,
  navic,
}
