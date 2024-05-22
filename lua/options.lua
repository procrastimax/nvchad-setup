require "nvchad.options"

local on_attach = require("nvchad.configs.lspconfig").on_attach

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

o.scrolloff = 5 -- start scrolling before reaching top/bottom
o.cmdheight = 0 -- disable emptry space under statusline, which is used for commands

local map = vim.keymap.set

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
      on_attach(client, bufnr)
      map("n", "<leader>rr", "<cmd> RustLsp runnables <CR>", { buffer = bufnr, desc = "Rust Runnables" })
      map("n", "<leader>rd", "<cmd> RustLsp debuggables <CR>", { buffer = bufnr, desc = "Rust Debuggables" })
      map("n", "<leader>rt", "<cmd> RustLsp testables <CR>", { buffer = bufnr, desc = "Rust Testables" })
      map("n", "<leader>rm", "<cmd> RustLsp expandMacro <CR>", { buffer = bufnr, desc = "Rust Expand Macro" })
      map("n", "<leader>ree", "<cmd> RustLsp explainError <CR>", { buffer = bufnr, desc = "Rust Explain Error" })
      map(
        "n",
        "<leader>red",
        "<cmd> RustLsp renderDiagnostic <CR>",
        { buffer = bufnr, desc = "Rust Explain Diagnostics" }
      )
      map("n", "<leader>rc", "<cmd> RustLsp openCargo <CR>", { buffer = bufnr, desc = "Rust Open Cargo" })
      map("n", "K", "<cmd> RustLsp hover actions <CR>", { buffer = bufnr, desc = "Rust Hover Actions" })
      map("n", "<leader>ca", "<cmd> RustLsp codeAction <CR>", { buffer = bufnr, desc = "Rust Code Action (grouped)" })
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {},
    },
  },
  -- DAP configuration
  dap = {},
}
