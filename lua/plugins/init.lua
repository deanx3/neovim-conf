return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },
   {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require("ufo").setup({
        provider_selector = function(_, _, _)
          return { "lsp", "indent" }
        end
      })
    end

  {
    "MeanderingProgrammer/render-markdown.nvim",
    config = function()
      -- Optional: Add any plugin-specific configurations here
      require("render-markdown").setup({
        -- Example configuration
        auto_render = true, -- Enable auto-rendering
      })
    end,
  },

  {
    "wellle/context.vim",
    config = function()
      -- Optional: Configure the plugin if needed
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    {
      "L3MON4D3/LuaSnip",
      keys = function()
        -- Disable default tab keybinding in LuaSnip
        return {}
      end,
    },
  },

  {
    "giusgad/pets.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
  }

}
