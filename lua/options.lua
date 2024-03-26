require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

o.scrolloff = 5 -- start scrolling before reaching top/bottom
o.cmdheight = 0 -- disable emptry space under statusline, which is used for commands

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {},
    },
  },
  -- DAP configuration
  dap = {},
}
