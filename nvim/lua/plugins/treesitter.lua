local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	ensure_installed = { "tsx", "prisma", "bash", "toml", "html", "javascript", "typescript", "go", "scss", "css", "json", "lua" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	highlight = {
		enable = true,
	},
	indent = {
		enable = false,
	},
	incremental_selection = {
		enable = false,
	},
	textobjects = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
})

--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
