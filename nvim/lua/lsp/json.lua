local lsp_config = require('lspconfig')
local on_attach = require('lsp/on_attach')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()) 

lsp_config.jsonls.setup({
  capabilities = capabilities,
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
  end
})
