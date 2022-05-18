vim.cmd("syntax on")
vim.cmd("set termguicolors")

vim.g.edge_style = 'neon'
vim.g.colors_name='edge'
vim.g.edge_transparent_background = 1
vim.g.tokyonight_style='storm'
vim.g.tokyonight_transparent = true
vim.g.tokyonight_dark_sidebar=false
vim.g.tokyonight_transparent_sidebar=true
vim.g.tokyonight_transparent_float=true
vim.cmd([[au VimEnter * highlight Normal guibg=none]])
vim.cmd [[highlight Normal guibg=none]]
vim.cmd[[ colorscheme tokyonight ]]


vim.cmd("hi Normal guibg=none ctermbg=none")
vim.cmd("hi LineNr guibg=none ctermbg=none")
vim.cmd("hi Folded guibg=none ctermbg=none")
vim.cmd("hi NonText guibg=none ctermbg=none")
vim.cmd("hi SpecialKey guibg=none ctermbg=none")
vim.cmd("hi VertSplit guibg=none ctermbg=none")
vim.cmd("hi CursorLineNr guibg=none ctermbg=none")
vim.cmd("hi StatusLine guibg=none ctermbg=none")
vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
vim.cmd("hi SignColumn guibg=none ctermbg=none")
