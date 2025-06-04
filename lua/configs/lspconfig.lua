-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "eslint", "ruff", "basedpyright" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.lexical.setup {
  on_attach = nvlsp.on_attach,
  -- on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "/home/max/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  root_dir = function(fname)
    return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
  end,
  filetypes = { "elixir", "eelixir", "heex" },
  settings = {},
}

lspconfig.tinymist.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    formatterMode = "typstyle",
    exportPdf = "onSave",
    semanticTokens = "disable",
  },
}

require "configs.typescript"
