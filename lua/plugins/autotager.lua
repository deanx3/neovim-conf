return 
	{
		'windwp/nvim-ts-autotag',
		event = "InsertEnter",
		config = function()
			require('nvim-ts-autotag').setup({
				aliases = {
					["go"] = "html",
				}
			})
		end,
	}


