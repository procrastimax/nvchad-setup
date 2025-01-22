return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
    lazy = true,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = true,
    opts = {},
    config = function() -- this needs to be set
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
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
    lazy = true,
    opts = {},
  },

  {
    "echasnovski/mini.nvim",
    version = "*",
    lazy = true,
    opts = {},
  },

  {
    "williamboman/mason.nvim",
    lazy = true,
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

  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {}, -- this is needed for the setup({}) function
  },
}
