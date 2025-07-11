-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  prettier = {},
  html = {},
  cssls = {},
  eslint = {},
  ts_ls = {},
  ruff = {},
  basedpyright = {},
  lexical = {
    cmd = { "/home/max/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
    root_markers = { "mix.exs", ".git" },
    filetypes = { "elixir", "eelixir", "heex" },
    settings = {},
  },
  tinymist = {
    settings = {
      formatterMode = "typstyle",
      exportPdf = "onSave",
      semanticTokens = "disable",
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
