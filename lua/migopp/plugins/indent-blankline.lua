-- indent-blankline.lua
-- Config file for the indent-blankline (indent guide) plugin

return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = { char = "|" },
	},
}
