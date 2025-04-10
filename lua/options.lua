require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.scrolloff = 5

-- FOLDING
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldcolumn = "0"
o.foldtext = ""
o.foldlevelstart = 4
o.foldnestmax = 4

-- setup update time for CursorHold (4000ms by default)
o.updatetime = 100
