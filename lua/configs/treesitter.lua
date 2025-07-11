local ts_config = require "nvchad.configs.treesitter"

local current_installed = ts_config.ensure_installed

local additional_languages = {
  "go",
  "rust",
  "typescript",
  "tsx",
  "json",
  "html",
  "css",
  "javascript",
  "bash",
  "python",
}

-- Merge the current list with additional languages
for _, lang in ipairs(additional_languages) do
  -- Only add if the language isn't already in the list
  if not vim.tbl_contains(current_installed, lang) then
    table.insert(current_installed, lang)
  end
end

-- Reapply the configuration with the extended list
require("nvim-treesitter.configs").setup(ts_config)
