local blink_cmp = {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none",
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "Nerd Font Mono",
    },
    completion = {
      list = {
        selection = {
          preselect = false,
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        window = {},
      },
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
    },
  },
}

local nvim_cmp = { "hrsh7th/nvim-cmp", enabled = true }

return {
  blink_cmp,
  nvim_cmp,
}
