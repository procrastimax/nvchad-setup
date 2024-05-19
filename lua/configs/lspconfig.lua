-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "lua_ls", "html", "cssls", "tsserver", "clangd" }

local map = vim.keymap.set

local on_attach_lsp = function(client, bufnr)
  on_attach(client, bufnr)
  map("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "LSP Hover" })
  map("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "LSP Diagnostic Prev" })
  map("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr, desc = "LSP Diagnostic Prev" })
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach_lsp,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.ruff_lsp.setup {
  on_attach = function(client, bufnr)
    on_attach_lsp(client, bufnr)
    client.server_capabilities.hoverProvider = false
  end,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {},
    },
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach_lsp,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
}

lspconfig.texlab.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    texlab = {
      build = {
        forwardSearchAfter = true,
        onSave = true,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        executable = "evince",
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false,
      },
    },
  },
}
