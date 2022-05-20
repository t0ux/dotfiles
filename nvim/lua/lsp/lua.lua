local lsp_config = require('lspconfig')
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- local on_attach = require('lsp/on_attach')

-- lsp_config.sumneko_lua.setup({
--   on_attach = on_attach,
  -- capabilities = capabilities
-- }) 

-- This will be the path towards your sumneko folder. This is subjective
local sumneko_root_path = "~/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/main.lua"
local sumneko_binary = "~/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin"
lsp_config.sumneko_lua.setup({
    cmd = {sumneko_binary, "-E", sumneko_root_path},
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            completion = {enable = true, callSnippet = "Both"},
            diagnostics = {
                enable = true,
                globals = {'vim', 'describe'},
                disable = {"lowercase-global"}
            },
        }
    },
    on_attach = on_attach_common
})
