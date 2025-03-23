local lspsaga = {
  "nvimdev/lspsaga.nvim",
  dependencies = {},
  config = function()
    require("lspsaga").setup({})
  end,
  event = "LspAttach",
}

local govim = {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", "gomod", "gosum", "gotmpl", "gohtmltmpl", "gotexttmpl" },
    config = function()
      require("go").setup({})

      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          require("go.format").gofmt()
        end,
        group = format_sync_grp,
      })
    end,
    event = { "CmdlineEnter" },
  },
}

local gopls_config = {
  settings = {
    gopls = {
      usePlaceholders = false,
      hints = {
        assignVariableTypes = false,
        compositeLiteralFields = false,
        compositeLiteralTypes = false,
        constantValues = false,
        functionTypeParameters = false,
        parameterNames = false,
        rangeVariableTypes = false,
      },
    },
  },
}

local lsp_config = {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = gopls_config,
    },
  },
}

return {
  lsp_config,
  lspsaga,
  govim,
}
