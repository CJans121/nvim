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

-- Disable continuation of comment sign to next line in insert mode
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
