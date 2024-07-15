return {
	{	
  	"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
    		"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
    		require("nvim-tree").setup {}
  	end,
	},
	{
  	"nvim-treesitter/nvim-treesitter",
  	version = "*",
  	lazy = false,
	},	
 	{ "rose-pine/neovim", name = "rose-pine" , init= function() vim.cmd('colorscheme rose-pine') end},
	{'williamboman/mason.nvim', config = function()
            require('mason').setup()
        end,},

 	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'eandrju/cellular-automaton.nvim'},
	{
    	'nvim-lualine/lualine.nvim',
    		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
    	'windwp/nvim-autopairs',
    	event = "InsertEnter",
    	config = true
    	-- use opts = {} for passing setup options
    	-- this is equalent to setup({}) function
	},
  	{
		'romgrk/barbar.nvim',
    		dependencies = {
      			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    		},
    		init = function() vim.g.barbar_auto_setup = false end,
  	},
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
     	 dependencies = { 'nvim-lua/plenary.nvim' }
    	},

{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
}
}


