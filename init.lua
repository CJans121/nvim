-- Redefine tab as two spaces
vim.cmd("set expandtab")      -- Use spaces instead of tab characters
vim.cmd("set tabstop=2")      -- Display existing tab characters as 2 spaces wide
vim.cmd("set softtabstop=2")  -- Insert 2 spaces when Tab is pressed in insert mode
vim.cmd("set shiftwidth=2")   -- Use 2 spaces for each step of auto-indent
vim.g.mapleader = ""           -- Remap Leader key as space

require("config.lazy")
