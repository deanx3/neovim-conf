return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("configs.treesitter")
      
      -- Configure ts-context-commentstring
      require("ts_context_commentstring").setup({
        enable_autocmd = false, -- Recommended for performance
      })
      
      -- Configure nvim-ts-autotag
      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
      })
    end,
  },
  -- These are now loaded as dependencies above
}
