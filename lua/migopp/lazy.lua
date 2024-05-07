-- lazy.lua
-- Set up/configure lazy nvim package manager

-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- lazy plugin setup
require("lazy").setup({
	{ import = "migopp.plugins" },
	{ import = "migopp.plugins.lsp" },
}, {
	change_detection = {
		notify = false,
	},
})
