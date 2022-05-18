require("gitsigns").setup {
  signs = {
    add = { hl = "DiffAdd", text = "▎" },
    change = { hl = "DiffChange", text = "▎" },
    delete = { hl = "DiffDelete", text = "▁" },
    topdelete = { hl = "DiffDelete", text = "▔" },
    changedelete = { hl = "DiffChange", text = "〜" },
  },
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1500,
    ignore_whitespace = false,
  },
}
