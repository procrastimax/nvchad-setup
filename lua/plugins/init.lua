return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = require "configs.conform",
    lazy = true,
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
        "python",
        "typescript",
        "tsx",
        "javascript",
        "json",
        "c",
        "go",
        "eex",
        "elixir",
        "heex",
        "typst",
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
        "tinymist",
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

  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {
      dependencies_bin = { ["tinymist"] = "tinymist" },
    }, -- lazy.nvim will implicitly calls `setup {}`
  },
}
