-- Provides advanced syntax highlighting, indentation, and code-aware features via nvim-treesitter (like incremental selection, folding, etc.)
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "lua", "vim", "c", "cpp", "python", "xml", "markdown", "bash"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
