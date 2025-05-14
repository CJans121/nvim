return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x', -- recommended by Telescope's GitHub README
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- This function runs after Telescope is loaded by lazy.nvim
      -- Safe to require telescope.builtin here and set keymaps
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {}) --- Control - P to find files
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) --- Space - fg to live grep
    end,
  }
}
