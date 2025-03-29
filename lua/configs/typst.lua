-- PDF Preview
vim.api.nvim_create_user_command("OpenPdf", function()
  local filepath = vim.api.nvim_buf_get_name(0)
  if filepath:match "%.typ$" then
    os.execute("xdg-open " .. vim.fn.shellescape(filepath:gsub("%.typ$", ".pdf")))
  end
end, {})
