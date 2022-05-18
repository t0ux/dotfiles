vim.g["test#javascript#runner"] = 'jest'

local map = vim.api.nvim_set_keymap

map("n", "t<C-n>", ":TestNearest<CR>", { silent = true })
map("n", "t<C-f>", ":TestFile<CR>", { silent = true })
map("n", "t<C-s>", ":TestSuite<CR>", { silent = true })
map("n", "t<C-l>", ":TestLast<CR>", { silent = true })
map("n", "t<C-v>", ":TestVisit<CR>", { silent = true })

