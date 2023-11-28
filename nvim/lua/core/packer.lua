require("packer").startup(function(use)
	use {
	  "nvim-lualine/lualine.nvim",
	  "nvim-tree/nvim-tree.lua",
	  "nvim-tree/nvim-web-devicons",
	}

	use {
	  "projekt0n/github-nvim-theme",
	  "dasupradyumna/midnight.nvim",
	}

	use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
	}

	use {
	  "hrsh7th/nvim-cmp",
	  "hrsh7th/cmp-nvim-lsp",
	  "L3MON4D3/LuaSnip",
	  "saadparwaiz1/cmp_luasnip",
	  "rafamadriz/friendly-snippets",
	}

	use "wbthomason/packer.nvim"
	use "numToStr/Comment.nvim"
	use "folke/which-key.nvim"
	use "github/copilot.vim"

	vim.cmd('colorscheme github_dark_high_contrast')
	require('Comment').setup()
end)

-- todo: find plugin or write function to do multiple tab indents with single key press when needed
-- todo: format on save documents by running cargo fmt or go fmt or prettier etc
-- todo: figure out if quote and brackets autocompletion is possible
-- todo: try treesitter
