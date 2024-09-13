-- Focus on NvimTree file explorer with Ctrl-r
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<C-r>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Open file explorer with <leader>pv (leader is space, so space+pv)
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--
-- Yank (copy) entire line to system clipboard in normal mode with <leader>Y
vim.keymap.set("n", "<leader>Y", [["+Y]])
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Save the current buffer with Ctrl-s
vim.keymap.set("n", "<C-s>", "<C-c>:w<CR>")

-- Format the entire buffer with Ctrl-i
vim.keymap.set("n", "<C-i>", "ggVG=")

-- Move current line down with Ctrl-j
vim.keymap.set("n", "<C-j>", "ddp")

-- Move current line up with Ctrl-k
vim.keymap.set("n", "<C-k>", "ddkP")
-- FOr movement on screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- for searching / 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")
