require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- FOr movement on screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- UFO fold mappings
map("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
map("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
map("n", "zr", require("ufo").openFoldsExceptKinds, { desc = "Open some folds" })
map("n", "zm", require("ufo").closeFoldsWith, { desc = "Close some folds" })

-- Ctrl + C for Escape
map("i", "<C-c>", "<Esc>", { desc = "Ctrl + C as Escape" })
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', { noremap = true, silent = true })  -- Exit insert mode

--
vim.api.nvim_set_keymap('n', ';', ';', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ',', ',', { noremap = true, silent = true })

-- Move current line down with Ctrl-j
vim.keymap.set("n", "<C-j>", "ddp")

-- Move current line up with Ctrl-k
vim.keymap.set("n", "<C-k>", "ddkP")
