require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("t", "<Esc>", "<C-\\><C-n>", { desc = "Terminal Leave insert mode" })
map("n", "<leader>F", ":lua vim.lsp.buf.format()<CR>", { desc = "Terminal Leave insert mode" })
