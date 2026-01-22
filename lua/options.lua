require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Blade filetype detection for Laravel
vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})

