-- Snippet engine for Neovim written in lua
return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"saadparwaiz1/cmp_luasnip", --- luasnip completion source for nvim-cmp (which is a completion engine plugin for neovim written in Lua)
		"rafamadriz/friendly-snippets", --- For VSCode-style snippets
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load() --- Add the VSCode-style snippets from friendly-snippets to luasnip
	end,
}
