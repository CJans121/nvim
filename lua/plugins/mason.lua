-- Provides a registry (and UI) for managing external tools like LSP servers, DAPs, linters, and formatters
return {
  "williamboman/mason.nvim",
  opts = {},
  config = function()
    require("mason").setup()
  end,
}
