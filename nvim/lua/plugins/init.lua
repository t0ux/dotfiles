vim.cmd("packadd packer.nvim")

require("packer").startup(function(use)
	-- package manager
	use({ "wbthomason/packer.nvim" })

	-- icons for some plugins
	use({
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins/devicons")
		end,
	})

	-- theme
	-- use({
	-- 	"jacoborus/tender.vim",
	-- 	config = function()
	-- 		require("plugins/theme")
	-- 	end,
	-- })

	use({
		"ntk148v/vim-horizon",
		config = function()
			require("plugins/theme")
		end,
	})

	use({
		"gruvbox-community/gruvbox",
		config = function()
			require("plugins/theme")
		end,
	})

	use({
		"ful1e5/onedark.nvim",
		config = function()
			require("plugins/theme")
		end,
	})

use({
		"codicocodes/tokyonight.nvim",
		config = function()
			require("plugins/theme")
		end,
	})


	-- nvimtree
	use({
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("plugins/nvimtree")
		end,
	})


	-- language server protocol
	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("lsp")
		end,
	})

	use({
    "williamboman/nvim-lsp-installer",
		config = function()
			require("lsp/lspinstaller")
		end,
	})


  -- lsp formatting with null-ls
	use({
    "jose-elias-alvarez/null-ls.nvim",
		config = function()
  			require("lsp/null-ls")
		end,
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			run = function()
				vim.cmd("TSUpdate")
			end,
		},
		config = function()
			require("plugins/treesitter")
		end,
	})

  -- debug adapter protocol (nvim-dap)
  use {'mfussenegger/nvim-dap'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'mfussenegger/nvim-dap-python'}
  use {'Pocco81/DAPInstall.nvim'}
  use {'rcarriga/nvim-dap-ui'}

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("plugins/telescope")
		end,
	})

	-- completion
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins/completion")
		end,
	})
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	-- ultisnips works with cmp for snippets
	use({ "SirVer/ultisnips" })
	use({ "quangnguyen30192/cmp-nvim-ultisnips" })
	use({ "honza/vim-snippets" })

	-- statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins/lualine")
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins/gitsigns")
		end,
	})

	-- various
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("plugins/autopairs")
		end,
	})
	use({
		"alvan/vim-closetag",
		config = function()
			require("plugins/closetag")
		end,
	})
	use({ "tpope/vim-surround" })
	use({ "tpope/vim-commentary" })
	use({
		"vim-test/vim-test",
		config = function()
			require("plugins/vimtest")
		end,
	})

	-- formatter
	-- use({
	-- 	"mhartington/formatter.nvim",
	-- 	config = function()
	-- 		require("plugins/formatter")
	-- 	end,
	-- })

	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("plugins/colorizer")
		end,
	})

	-- bufferline
	-- use({
	-- 	"akinsho/bufferline.nvim",
	-- 	config = function()
	-- 		require("plugins/bufferline")
	-- 	end,
	-- 	requires = "kyazdani42/nvim-web-devicons",
	-- })
end)
