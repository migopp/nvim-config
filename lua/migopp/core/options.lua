-- options.lua
-- This file contains options for the core of this config

local opt = vim.opt -- quick 'n dirty

-- line numbering
opt.relativenumber = true
opt.number = true

-- tabs 'n indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor line
-- opt.cursorline = true

-- colors
-- opt.termguicolors = true
opt.background = "dark"

-- sign column
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- swap
opt.swapfile = false
