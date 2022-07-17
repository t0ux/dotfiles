local M = {}
M.theme = function()
    local colors = {
        darkgray = "#1C1E26",
        gray = "#ffffff",
        innerbg = "#192330",
        outerbg = "#192330",
        normal = "#6FA3D6",
        insert = "#8fcf3f",
        visual = "#ff8337",
        replace = "#e46876",
        command = "#e5b55d",
    }
    return {
        inactive = {
            a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        visual = {
            a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        replace = {
            a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        normal = {
            a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
            b = { fg = colors.replace, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        insert = {
            a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
        command = {
            a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
            b = { fg = colors.gray, bg = colors.outerbg },
            c = { fg = colors.gray, bg = colors.innerbg },
        },
    }
end


require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = M.theme(),
		component_separators = '',
		-- component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
    show_modified_status = true, -- Shows indicator when the buffer is modified.
  },
	sections = {
		lualine_a = { "mode" },
		lualine_b = { 
      {
        "branch", 
        color = { fg="#ffffff" }, 
        padding = 2,
      }, 
      { 
      'diff',
      colored = true, -- Displays a colored diff status if set to true
      diff_color = {
        -- Same color values as the general color option can be used here.
        added    = {fg="#51c932"}, -- Changes the diff's added color
        modified = {fg= '#fabb3e' }, -- Changes the diff's modified color
        removed  = {fg= '#e34e4b' }, -- Changes the diff's removed color
      },
      symbols = {
        added = '[+]', modified = '[~]', removed = '[-]'
      }, -- Changes the symbols used by the diff.
      source = nil, -- A function that works as a data source for diff.
                    -- It must return a table as such:
                    --   { added = add_count, modified = modified_count, removed = removed_count }
                    -- or nil on failure. count <= 0 won't be displayed.
        padding = 2,
      }, 
      {
        "diagnostics", 
        symbols = {error = 'E: ', warn = 'W: ', info = 'I: ', hint = 'H: '},
        padding = 2,
        sources= {'nvim_diagnostic', 'nvim_lsp'},
        colored = true,
        sections = { 'error', 'warn', 'info', 'hint' },
        diagnostics_color = {
          hint = {fg="#51c932"}, -- Changes the diff's added color
          warn = {fg= '#fabb3e' }, -- Changes the diff's modified color
          error = {fg= '#e34e4b' }, -- Changes the diff's removed color
          info = {fg= '#4599de' }, -- Changes the diff's removed color
        },
      },
    },
		lualine_c = { { "filename", 
    file_status = true, 
    path = 1, 
    mode = 4,
    symbols = {
        modified = ' [+UNSAVED+] ',      -- Text to show when the file is modified.
      } 
     } 
    },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress", },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
