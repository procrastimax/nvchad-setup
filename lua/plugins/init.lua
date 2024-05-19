return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "texlab",
        "prettier",
        "typescript-language-server",
        "shfmt",
        "rust-analyzer",
        "ruff-lsp",
        "pyright",
      },
    },
  },
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "python",
        "go",
        "java",
        "latex",
        "c",
        "toml",
        "markdown",
        "javascript",
        "typescript",
      },
      indent = {
        enable = true,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    keys = {
      { "<leader>rr", "<cmd> RustLsp runnables <CR>", desc = "Rust: Runnables" },
      { "<leader>rd", "<cmd> RustLsp debuggables <CR>", desc = "Rust: Debuggables" },
      { "<leader>rt", "<cmd> RustLsp testables <CR>", desc = "Rust: Testables" },
      { "<leader>rm", "<cmd> RustLsp expandMacro <CR>", desc = "Rust: Expand Macro" },
      { "<leader>ree", "<cmd> RustLsp explainError <CR>", desc = "Rust: Explain Error" },
      { "<leader>red", "<cmd> RustLsp renderDiagnostic <CR>", desc = "Rust: Explain Diagnostics" },
      { "<leader>rc", "<cmd> RustLsp openCargo <CR>", desc = "Rust: Open Cargo" },
      { "K", "<cmd> RustLsp hover actions <CR>", "Rust: Hover Actions" },
      { "<leader>ca", "<cmd> RustLsp codeAction <CR>", "Rust: Code Action (grouped)" },
    },
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
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = { "rust", "python" },
    keys = {
      {
        "]t",
        function()
          require("todo-comments").jump_next()
        end,
        desc = "Jump to next todo comment",
      },
      {
        "[t",
        function()
          require("todo-comments").jump_prev()
        end,
        desc = "Jump to next todo comment",
      },
      { "<leader>tt", "<CMD>TodoTelescope<CR>", desc = "Jump to next todo comment" },
    },
    opts = {},
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {},
  },
}
