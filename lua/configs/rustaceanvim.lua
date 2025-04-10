vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
      vim.keymap.set("n", "<leader>ca", function()
        vim.cmd.RustLsp "codeAction" -- supports rust-analyzer's grouping
        -- or vim.lsp.buf.codeAction() if you don't want grouping.
      end, { silent = true, buffer = bufnr, desc = "Rust Code Action" })

      vim.keymap.set(
        "n",
        "K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
        function()
          vim.cmd.RustLsp { "hover", "actions" }
        end,
        { silent = true, buffer = bufnr, desc = "Rust Hover" }
      )
    end,

    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {},
    },
  },
  -- DAP configuration
  dap = {},
}
