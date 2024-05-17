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
				"gopls",
				"zls",
				"autotools_ls",
				"marksman",
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"prismals",
				"svelte",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"beautysh",
				"stylua",
				"clang-format",
				"isort",
				"black",
				"goimports",
				"prettier",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
