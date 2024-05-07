-- alpha.lua
-- Config file for the alpha (greeter) plugin

return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		-- header
		startify.section.header.val = {
			"          _nnnn_         ",
			"         dGGGGMMb        ",
			"        @p~qp~~qMb       ",
			"        M|@||@) M|       ",
			"        @,----.JM|       ",
			"       JS^\\__/  qKL      ",
			"      dZP        qKRb    ",
			"     dZP          qKKb   ",
			"    fZP            SMMb  ",
			"    HZM            MMMM  ",
			"    FqM            MMMM  ",
			'  __| ".        |\\dS"qML ',
			"  |    `.       | `' \\Zq ",
			" _)      \\.___.,|     .' ",
			"  \\____   )MMMMMP|   .'  ",
			"       `-'       `--'    neovim.",
		}

		-- send config to alpha
		alpha.setup(startify.opts)

		-- disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
