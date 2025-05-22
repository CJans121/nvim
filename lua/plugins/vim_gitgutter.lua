-- -- Shows Git diff indicators (added/modified/removed lines) in the sign column
return {
	"airblade/vim-gitgutter",
	config = function()
		vim.g.gitgutter_sign_priority = 5 -- lower than diagnostic signs (default ~10)
	end,
}
