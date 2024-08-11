-- mason.lua
-- Config for the mason plugin

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason tool installer
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"lua_ls",
				"clangd",
				"rust_analyzer",
				"pyright",
				"autotools_ls",
				"marksman",
				"tsserver",
				"html",
				"cssls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"beautysh",
				"stylua",
				"clang-format",
				"isort",
				"black",
				"prettier",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
