return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "rust",
        "lua",
        "vimdoc",
        "html",
        "css",
        "html",
        "python",
        "typescript",
        "tsx",
        "javascript",
      },
    },
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  },

  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.icons").setup()
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
        "html-lsp",
        "prettier",
        "stylua",
        "typescript-language-server",
        "eslint-lsp",
      },
    },
  },
}
