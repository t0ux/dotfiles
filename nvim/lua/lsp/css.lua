local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_config = require("lspconfig")
local on_attach = require("lsp/on_attach")

lsp_config.cssls.setup({
	capabilities = capabilities,
	filetypes = { "css", "sass", "scss" },
	settings = {
		css = {
			validate = true,
		},
		sass = {
			validate = true,
		},
		scss = {
			validate = true,
		},
	},
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		on_attach(client)
	end,
})
