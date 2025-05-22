-- Enables commonly used language servers using Neovim 0.11+ built-in LSP API and nvim-lspconfig defaults
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	}, --- to extend LSP capabilities with completion support for nvim-cmp
	config = function()
		-- Enable enhanced capabilities for nvim-cmp completion
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- List of LSP servers to enable
		local servers = {
			"pyright", -- Python
			"lua_ls", -- Lua
			"vimls", -- Vimscript
			"clangd", -- C/C++
			"lemminx", -- XML
			"marksman", -- Markdown
		}

		-- Apply shared capabilities and enable each LSP
		for _, server in ipairs(servers) do
			vim.lsp.config(server, { capabilities = capabilities })
			vim.lsp.enable(server)
		end

		-- Disable diagnostic signs in the gutter by default (to avoid visual clutter or conflict with git-gutter)
		vim.diagnostic.config({ signs = false })

		-- Keybindings on LSP attach
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Enable omnifunc for completion
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
				-- Diagnostic keymaps (LSP-scoped)
				vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "<leader>lj", vim.diagnostic.goto_next, opts)
				vim.keymap.set("n", "<leader>lk", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, opts)
				-- Toggle diagnostic signs in the gutter
				local show_diagnostic_signs = false
				vim.keymap.set("n", "<leader>ts", function()
					show_diagnostic_signs = not show_diagnostic_signs
					vim.diagnostic.config({
						signs = show_diagnostic_signs,
					})
					print(show_diagnostic_signs and "📌 Diagnostic signs ON" or "🚫 Diagnostic signs OFF")
				end, { desc = "Toggle diagnostic signs" })
			end,
		})
	end,
}
