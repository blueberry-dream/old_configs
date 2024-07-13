-- plugin table for lazy.nvim

local M = {
	-- colorschemes
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = require("plugins.catppuccin.config"),
		enabled = true
	},
	{
		"blueberry-wave/nvim-base16",
		config = require("plugins.base16.config"),
		enabled = false
	},
	-- plenary
	{
		"nvim-lua/plenary.nvim",
		lazy = false
	},
	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		config = require("plugins.nvim-tree.config")
	},
	-- statusline
	{
		"rebelot/heirline.nvim",
		config = true,
		enabled = false
	},
	{
		"nvim-lualine/lualine.nvim",
		config = require("plugins.lualine.config"),
		enabled = true
	},
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = require("plugins.tree-sitter.config")
	},
	-- search
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	},
	-- git integrations
	{
		"lewis6991/gitsigns.nvim",
		config = require("plugins.gitsigns.config")
	},
	-- lsp
	{
		"neovim/nvim-lspconfig",
		config = require("plugins.lsp-config.config"),
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim"
		}
	},
	{
		"williamboman/mason.nvim",
		config = true
	},
	-- completion
	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		-- config = require("plugins.nvim-cmp.config"),
		config = true,
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},
	-- colorizer
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			--vim.o.termguicolors = true
			local plug = require("colorizer")
			plug.setup()
		end
	}
}

return M
