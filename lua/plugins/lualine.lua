-- Provides Neovim statusline using lualine.nvim (with icons support)
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'gruvbox',
      },
    })
  end,
}

