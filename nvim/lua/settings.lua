-- map leader to space
vim.g.mapleader = " "
vim.opt.termguicolors = true

-- this local is equal to :set in vim
local set = vim.opt
set.backupcopy = "yes"
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2
set.updatetime = 100
set.exrc = true
set.relativenumber = true
set.hidden = true
set.nu = true
set.showmode = false
set.incsearch = true
set.swapfile = false
set.hlsearch = false
set.wrap = false
set.scrolloff = 8
set.errorbells = false
set.ruler = true
-- set.signcolumn = "no"
set.clipboard = "unnamedplus"
set.breakindent = true -- keep indentation when lines break
set.breakindentopt = "shift:2" -- but shift it by 2 spaces
set.linebreak = true -- break only at specific characters, :h breakat
set.completeopt = {
	"menuone",
	"noinsert",
	"noselect",
}
set.autoindent = true
set.smartindent = true
set.magic = true
set.number = true
set.encoding = "utf-8"
set.fileencoding = "utf-8"
set.autoread = true
set.visualbell = true
-- set.cursorcolumn = true
-- set.cursorline = true

-- highlight on yank
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })')

--pythonprovider
vim.g['python3_host_prog'] = '/usr/bin/python3'


