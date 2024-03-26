-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onenord",
  theme_toggle = { "onenord", "onenord_light" },
  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = false,
    overriden_modules = nil,
  },

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  }
}

return M
