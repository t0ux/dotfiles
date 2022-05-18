local lsp_config = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = require('lsp/on_attach')

lsp_config.html.setup({
  capabilities = capabilities,
  on_attach = function(client)
		client.resolved_capabilities.document_formatting = false -- stops the language server from being a formatter
    on_attach(client)
  end
}) 
