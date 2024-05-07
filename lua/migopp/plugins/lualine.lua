-- lualine.lua
-- Config file for the lualine (status bar) plugin

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		lualine.setup({
			options = {
				theme = "seoul256", -- set lualine to editor theme
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
		})
	end,
}
