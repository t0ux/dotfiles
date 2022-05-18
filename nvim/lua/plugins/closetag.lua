vim.g["closetag_filenames"] = "*.html,*.xml,*.jsx,*.tsx,*.ts,*.js"
vim.g["closetag_filetypes"] = "html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact"
vim.g["closetag_shortcut"] = '>'
vim.cmd[[
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion,tsxRegion',
  \ }]]

vim.cmd('autocmd BufNewFile,BufRead *.js set filetype=javascript.js')
vim.cmd('autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx')

