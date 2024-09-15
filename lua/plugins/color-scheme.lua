return {
  { 'rose-pine/theme', init = function()
      require("rose-pine").setup({
          -- ... your Rose Pine theme configuration here
      })
      vim.cmd('colorscheme rose-pine')
  end },
}