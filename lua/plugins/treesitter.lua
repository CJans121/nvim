-- Provides advanced syntax highlighting, indentation, and code-aware features via nvim-treesitter (like incremental selection, folding, etc.)
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate"
}
