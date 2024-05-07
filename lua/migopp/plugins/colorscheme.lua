-- colorscheme.lua
-- Config file for my editor colorscheme

return {
	{
		"neanias/everforest-nvim",
		name = "everforest",
		priority = 1000, -- load this first!
		-- colorscheme config
		config = function()
			require("everforest").setup({
				background = "hard",
				transparent_background_level = 2,
			})
			-- load colorscheme here
			require("everforest").load()
		end,
	},
}
