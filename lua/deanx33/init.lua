require("deanx33.set")
require("deanx33.remap")

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
local cfg = {
    bind = true,
    handler_opt = {
        border = "rounded"
    }
}  -- add your config here
require "lsp_signature".setup(cfg)
