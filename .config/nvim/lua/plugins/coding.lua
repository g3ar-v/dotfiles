return {
	-- Create annotations with one keybind, and jump your cursor in the inserted annotation
	{
		"danymat/neogen",
		keys = {
			{
				"<leader>cc",
				function()
					require("neogen").generate({})
				end,
				desc = "Neogen Comment",
			},
		},
		opts = { snippet_engine = "luasnip" },
	},
	-- Incremental rename
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		config = true,
	},

	-- Refactoring tool
	{
		"ThePrimeagen/refactoring.nvim",
		keys = {
			{
				"<leader>r",
				function()
					require("refactoring").select_refactor()
				end,
				mode = "v",
				noremap = true,
				silent = true,
				expr = false,
			},
		},
		opts = {},
	},
	{
		"simrat39/symbols-outline.nvim",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
		cmd = "SymbolsOutline",
		opts = {
			position = "right",
		},
	},

	-- Chat with LLM
	-- {
	--   "sourcegraph/sg.nvim",
	--   dependencies = { "nvim-lua/plenary.nvim" },
	--
	--   -- If you have a recent version of lazy.nvim, you don't need to add this!
	--   build = "nvim -l build/init.lua",
	-- },
	--
	-- ChatGPT
	-- {
	--   "jackMort/ChatGPT.nvim",
	--   event = "VeryLazy",
	--   config = function()
	--     require("chatgpt").setup({
	--       api_key_cmd = "op read op://private/OpenAI/credential --no-newline",
	--     })
	--   end,
	--   dependencies = {
	--     "MunifTanjim/nui.nvim",
	--     "nvim-lua/plenary.nvim",
	--     "nvim-telescope/telescope.nvim",
	--   },
	--   keys = {
	--     {
	--       "<leader>ce",
	--       "<cmd>ChatGPTEditWithInstruction<CR>",
	--       desc = "Edit Code with instruction with LLM",
	--       mode = { "n", "v" },
	--     },
	--     { "<leader>cx", "<cmd>ChatGPTRun explain_code<CR>", "Explain Code with LLM", mode = { "n", "v" } },
	--     {
	--       "<leader>cB",
	--       "<cmd>ChatGPTRun fix_bugs<CR>",
	--       "Code Bug Fixing",
	--       mode = { "n", "v" },
	--     },
	--   },
	-- },
	{
		"nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},
}
