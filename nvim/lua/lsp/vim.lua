local lsp_config = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = require('lsp/on_attach')

lsp_config.vimls.setup({
  on_attach = on_attach,
  capabilities = capabilities
}) 
