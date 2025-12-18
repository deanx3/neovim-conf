require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Blade filetype detection for Laravel
vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})

