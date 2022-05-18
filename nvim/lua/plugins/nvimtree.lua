require("nvim-tree").setup({
  auto_reload_on_write = true,
  disable_netrw = false,
  -- hide_root_folder = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 40,
    height = 30,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = nil,
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = true,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      git = false,
      profile = false,
    },
  },
})
local map = vim.api.nvim_set_keymap

-- map leader to space
vim.g.mapleader = " "

-- vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1

vim.g.nvim_tree_lint_lsp = 1
-- vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_icons = {
  default= '',
  symlink= '',
  git= {
    unstaged= "✗",
    staged= "✓",
    unmerged= "",
    renamed= "➜",
    untracked= "★",
    deleted= "",
    ignored= "◌"
  },
  folder= {
    default= "",
    open= "",
    empty= "",
    empty_open= "",
    symlink= "",
    symlink_open= "",
  },
  lsp= {
    hint= "",
    info= "",
    warning= "",
    error= "",
  }
}

vim.cmd[[highlight NvimTreeSymlink guifg=blue gui=bold,underline]]

map("n", "<Leader>me", ":NvimTreeToggle<CR>", { noremap = true })
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", { noremap = true })
map("n", "<Leader>n", ":NvimTreeFindFile<CR>", { noremap = true })
