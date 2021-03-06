vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = {
		prefix = "●",
		spacing = 2,
	},
	update_in_insert = true,
	severity_sort = true,
})

vim.fn.sign_define("LspDiagnosticsSignError", {
	-- text = "✖",
	text = "E",
	numhl = "LspDiagnosticsDefaultError",
})
vim.fn.sign_define("LspDiagnosticsSignWarning", {
	-- text = "▲",
	text = "W",
	numhl = "LspDiagnosticsDefaultWarning",
})
vim.fn.sign_define("LspDiagnosticsSignInformation", {
	-- text = "●",
	text = "I",
	numhl = "LspDiagnosticsDefaultInformation",
})
vim.fn.sign_define("LspDiagnosticsSignHint", {
	-- text = "✱",
	text = "H",
	numhl = "LspDiagnosticsDefaultHint",
})

require("lsp/bash")
require("lsp/css")
require("lsp/html")
require("lsp/json")
require("lsp/typescript")
require("lsp/vim")
require("lsp/go")
require("lsp/ccls")
require("lsp/pyright")
require("lsp/prisma")
require("lsp/yaml")
require("lsp/lua")
