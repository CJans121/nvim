-- Enables Copilot Chat functionality in Neovim
return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",

		init = function()
			-- Disable GitHub Copilot inline suggestions in CopilotChat
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "copilot-chat",
				callback = function()
					vim.b.copilot_enabled = false
				end,
			})
		end,
		-- 🚀 Add your keybindings here
		keys = {
			-- ✅ Toggle CopilotChat with <leader>cc
			{
				"<leader>ai",
				function()
					vim.cmd("CopilotChatToggle")
				end,
				mode = "n",
				desc = "Toggle CopilotChat",
			},
			{
				"<leader>ai",
				function()
					vim.cmd("CopilotChatToggle")
				end,
				mode = "v",
				desc = "Toggle CopilotChat",
			},
		},
		opts = {
			-- See Configuration section for options
			model = 'grok-code-fast-1', -- AI model to use
			temperature = 0.1, -- Lower = focused, higher = creative
			window = {
				layout = 'horizontal',
				width = 80, -- Fixed width in columns
				height = 20, -- Fixed height in rows
				border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
				title = '🤖 AI Assistant',
			        zindex = 45, -- Below completion popups (50) but above most windows
			},

			headers = {
				user = '👤 You',
				assistant = '🤖 Copilot',
				tool = '🔧 Tool',
			},

			separator = '━━',
			auto_fold = true, -- Automatically folds non-assistant messages

		},
	},
}
