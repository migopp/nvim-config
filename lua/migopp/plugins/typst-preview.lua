-- typst-preview.lua
-- Config for the typst-preview (typst viewer) plugin

return {
	"chomosuke/typst-preview.nvim",
	lazy = false, -- or ft = 'typst'
	version = "1.*",
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`
}
