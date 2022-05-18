local util = require 'lspconfig.util'
local lspconfig = require("lspconfig")
local on_attach = require("lsp/on_attach")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.ccls.setup({
  capabilities = capabilities,
  on_attach = function(client)
  client.resolved_capabilities.document_formatting = false
    on_attach(client)
  end,
  default_config = {
    cmd = { 'ccls' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = util.root_pattern('compile_commands.json', '.ccls', '.git'),
    offset_encoding = 'utf-32',
    -- ccls does not support sending a null root directory
    single_file_support = false,
  },
	init_options = {
		compilationDatabaseDirectory = "build",
		index = {
			threads = 0,
		},
		clang = {
			excludeArgs = { "-frounding-math" },
		},
	},
})
