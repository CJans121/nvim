-- Provides a modern file explorer tree with enhanced UI and features using neo-tree.nvim
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Optional: for file icons
    "MunifTanjim/nui.nvim",
    -- { "3rd/image.nvim", opts = {} }, -- Optional: image preview support in floating window
  },
  lazy = false, -- Ensure neo-tree loads immediately
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- Add your neo-tree configuration options here
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end,
}
