-- Setup Cursor Highlights
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    vim.lsp.buf.clear_references()
    vim.lsp.buf.document_highlight()
  end,
})
