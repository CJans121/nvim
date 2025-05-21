--- Sets vim.ui.select to Telescope. That means for example that neovim core stuff can fill the telescope picker. Example would be lua vim.lsp.buf.code_action().
return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({}),
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}

