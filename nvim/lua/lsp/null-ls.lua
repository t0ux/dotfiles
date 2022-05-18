local formatting = require("null-ls").builtins.formatting 
local diagnostics = require("null-ls").builtins.diagnostics
-- local completion = require("null-ls").builtins.completion


require("null-ls").setup({
    -- -- you can reuse a shared lspconfig on_attach callback here
    -- on_attach = function(client, bufnr)
    --     if client.supports_method("textDocument/formatting") then
    --         vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    --         vim.api.nvim_create_autocmd("BufWritePre", {
    --             group = augroup,
    --             buffer = bufnr,
    --             callback = function()
    --                 -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
    --                 vim.lsp.buf.formatting_sync()
    --             end,
    --         })
    --     end
    -- end,
sources = {
		formatting.stylua, -- formatter for lua
		formatting.prettier, -- js, ts, css, html formatter
		formatting.gofmt, -- go formatter
		formatting.clang_format, -- c++/c formatter
		formatting.black, -- python3 formatter
    diagnostics.eslint,  -- js, ts, css, html linter
	  diagnostics.golangci_lint, -- go linter
	  diagnostics.cppcheck, -- cpp/c diagnostics/lint
	  diagnostics.flake8, -- python3 linter - style guide enforcement
	},
})
