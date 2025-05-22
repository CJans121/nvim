-- Redefine tab as two spaces
vim.cmd("set expandtab")     -- Use spaces instead of tab characters
vim.cmd("set tabstop=2")     -- Display existing tab characters as 2 spaces wide
vim.cmd("set softtabstop=2") -- Insert 2 spaces when Tab is pressed in insert mode
vim.cmd("set shiftwidth=2")  -- Use 2 spaces for each step of auto-indent

-- Enable absolute line numbers by default
vim.cmd("set number")

-- Toggle relative numbers with \r
vim.keymap.set("n", "\\r", ":set rnu!<CR>", { silent = true })

-- Highlight current cursorline and cursorcolumn
vim.cmd("set cursorline")
vim.cmd("set cursorcolumn")

-- Increase Vim's update time for reduced latency
vim.o.updatetime = 300

-- Always show sign column to avoid flicker
vim.opt.signcolumn = "yes"
