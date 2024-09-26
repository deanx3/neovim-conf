-- return {
--   { 'rose-pine/neovim', init = function()
--       require("rose-pine").setup({
--           -- ... your Rose Pine theme configuration here
--       })
--       vim.cmd('colorscheme rose-pine')
--   end },
-- }
-- return {
--     "tiagovla/tokyodark.nvim",
--     opts = {
--         -- custom options here
--     },
--     config = function(_, opts)
--         require("tokyodark").setup(opts) -- calling setup is optional
--         vim.cmd [[colorscheme tokyodark]]
--     end,
-- }

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_tritanopia')
  end,
}

-- return {
--   'EdenEast/nightfox.nvim',
--   name = 'nightfox',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require('nightfox').setup({
--       -- ...
--     })
--
--     vim.cmd('colorscheme Carbonfox')

