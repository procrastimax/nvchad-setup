require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.scrolloff = 5

-- FOLDING
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevelstart = 4
vim.opt.foldnestmax = 4

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
      vim.keymap.set("n", "<leader>a", function()
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
