-- Facilitates seamless navigation between tmux and Neovim panes
return {
  "christoomey/vim-tmux-navigator",
  config = function()
    vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>',  { noremap = true, silent = true })
    vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>',  { noremap = true, silent = true })
    vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>',    { noremap = true, silent = true })
    vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { noremap = true, silent = true })
  end,
}
