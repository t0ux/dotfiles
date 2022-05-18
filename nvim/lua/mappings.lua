local map = vim.api.nvim_set_keymap
map("n", "<c-s>", ":w<CR>", { noremap = true })
map("i", "<c-s>", "<Esc>:w<CR>a", { noremap = true })

-- :vertical resize w<CRw<CR>>+5
-- :vertical resize -5
-- resize windows
map("n", "<C-w><", ":vertical resize -5<CR>", { noremap = true })
map("n", "<C-w>>", ":vertical resize +5<CR>", { noremap = true })
map("n", "<C-w>+", ":resize +5<CR>", { noremap = true })
map("n", "<C-w>_", ":resize -5<CR>", { noremap = true })

-- map leader to space
vim.g.mapleader = " "

-- buffer navigation
map("n", "<Leader>,", "<C-^>", { noremap = true }) -- access last open buffer
map("n", "<Leader>bl", ":buffers<CR>", { noremap = true })
map("n", "<Tab>", ":bnext<CR>", { noremap = true })
map("n", "<S-Tab>", ":bprev<CR>", { noremap = true })

-- deal with clipboard copy paste (set clipboard to unnamed plus on linux)
map("n", "<Leader>y", '"+y', { noremap = true })
map("v", "<Leader>y", '"+y', { noremap = true })
map("n", "<Leader>p", '"+p', { noremap = true })
map("v", "<Leader>p", '"+p', { noremap = true })
map("n", "<Leader>P", '"+P', { noremap = true })

-- go normal mode
map("i", "jj", "<Esc>", { noremap = true })

-- keep visual selection when indenting
map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

-- search and replace the word under cursor
map("n", "<Leader>*", ":%s/<C-r><C-w>//<Left>", { noremap = true })

-- quit faster
map("n", "q<Tab>", ":q<CR>", { noremap = true })

-- quickfixlist
map("n", "<Leader>qn", ":cnext<CR>", { noremap = true })
map("n", "<Leader>qp", ":cprevious<CR>", { noremap = true })
-- map("n", "<Leader>ql", ":copen<CR>", { noremap = true })

-- local qf list
map("n", "<Leader>wn", ":lnext<CR>", { noremap = true })
map("n", "<Leader>wp", ":lprevious<CR>", { noremap = true })
-- map("n", "<Leader>l", ":lopen<CR>", { noremap = true })

-- delete current buffer
map("n", "<Leader>db", ":bd<CR>", { noremap = true })

-- delete word to the right
map("i", "<C-e>", "<C-o>de", { noremap = true })

-- undo last action insert mode
map("i", "<C-l>", "<C-o>u", { noremap = true })

-- delete without yanking
map("n", "<Leader>pr", '"0p"', { noremap = true })


-- nvim-dap
map('n', '<leader>dct', '<cmd>lua require"dap".continue()<CR>', { noremap = true })
map('n', '<leader>dsv', '<cmd>lua require"dap".step_over()<CR>', { noremap = true })
map('n', '<leader>dsi', '<cmd>lua require"dap".step_into()<CR>', { noremap = true })
map('n', '<leader>dso', '<cmd>lua require"dap".step_out()<CR>', { noremap = true })
map('n', '<leader>dtb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true })

map('n', '<leader>dsbr', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', { noremap = true })
map('n', '<leader>dsbm', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', { noremap = true })
map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>', { noremap = true })
map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>', { noremap = true })

-- dap-ui
-- map('n', '<leader>dsc', '<cmd>lua require"dapui".scopes()<CR>', { noremap = true })
-- map('n', '<leader>dhh', '<cmd>lua require"dapui".hover()<CR>', { noremap = true })
-- map('v', '<leader>dhv', '<cmd>lua require"dapui".visual_hover()<CR>', { noremap = true })
-- map('n', '<leader>duh', '<cmd>lua require"dapui".hover()<CR>', { noremap = true })
-- map('n', '<leader>duf', "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", { noremap = true })
map('n', '<leader>dui', '<cmd>lua require"dapui".toggle()<CR>', { noremap = true })

-- telescope-dap
map('n', '<leader>dcc', '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', { noremap = true })
map('n', '<leader>dco', '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', { noremap = true })
map('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', { noremap = true })
map('n', '<leader>dv', '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', { noremap = true })
map('n', '<leader>df', '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', { noremap = true })
