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
