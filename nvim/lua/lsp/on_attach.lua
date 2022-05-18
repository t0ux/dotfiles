return function(client)
	vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap(
		"n",
		"<leader>k",
		"<cmd>lua vim.lsp.buf.signature_help()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"i",
		"<M-k>",
		"<cmd>lua vim.lsp.buf.signature_help()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<leader>td",
		"<cmd>lua vim.lsp.buf.type_definition()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
	-- vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap(
		"n",
		"<leader>dp",
		"<cmd>lua vim.diagnostic.goto_prev()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<leader>dn",
		"<cmd>lua vim.diagnostic.goto_next()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<leader>l",
		"<cmd>lua vim.diagnostic.setloclist()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<leader>ql",
		"<cmd>lua vim.diagnostic.setqflist()<CR>",
		{ noremap = true, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<leader>ca",
		"<cmd>lua vim.lsp.buf.code_action()<CR>",
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
  -- if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --         group = augroup,
  --         buffer = bufnr,
  --         callback = function()
  --             -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
  --             vim.lsp.buf.formatting_sync()
  --         end,
  --     })
  -- end

  vim.cmd[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]

-- if client.resolved_capabilities.document_formatting then
--   vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
-- end

end

