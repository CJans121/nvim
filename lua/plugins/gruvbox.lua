return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Load before other plugins
    config = function()
      vim.o.background = "dark" -- or "light"
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
