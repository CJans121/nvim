-- Provides the gruvbox colorscheme with Neovim native Lua support (customizable contrast, palette, and integrations)
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Load before other plugins (for colorscheme)
  config = function()
    -- Set background and apply colorscheme after plugin is loaded
    -- This ensures gruvbox is available in the runtimepath before calling colorscheme
    vim.o.background = "dark" -- or "light"
    vim.cmd("colorscheme gruvbox")
  end,
}
