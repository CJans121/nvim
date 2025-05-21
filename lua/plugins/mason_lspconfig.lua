-- Provides integration between mason.nvim and lspconfig, with automatic LSP server installation
return {
  "mason-org/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",     -- Lua
        "vimls",      -- Vim script
        "clangd",     -- C/C++
        "pyright",    -- Python
        "lemminx",    -- XML
        "marksman",   -- Markdown
      },
    })
  end,
}

