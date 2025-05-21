-- Adds formatters and linters and spell checker via null-ls
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.black, -- Python
				null_ls.builtins.formatting.clang_format, -- C/C++
				null_ls.builtins.formatting.prettier, -- Markdown
				null_ls.builtins.formatting.xmllint, -- XML

				-- Linters / Diagnostics
				-- null_ls.builtins.diagnostics.selene,        -- Lua
				-- null_ls.builtins.diagnostics.flake8,        -- Python
				-- null_ls.builtins.diagnostics.clang_check,   -- C/C++
				-- null_ls.builtins.diagnostics.markdownlint,  -- Markdown
				-- null_ls.builtins.diagnostics.xmllint,       -- XML

				-- Completion
				null_ls.builtins.completion.spell, -- Spell checker
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
