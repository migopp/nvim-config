-- autopairs.lua
-- Config file for the autopairs plugin

return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true, -- enable treesitter
		})

		-- import nvim-autopairs completion
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- import nvim-cmp plugin
		local cmp = require("cmp")

		-- make them play nice
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
