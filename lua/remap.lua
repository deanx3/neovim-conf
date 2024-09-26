-- test Focus on NvimTree file explorer with Ctrl-r
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
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- Save the current buffer with Ctrl-s
vim.keymap.set("n", "<C-s>", ":w<CR>")

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


local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)



 -- Key mappings
 local opts = { noremap = true, silent = true }
 vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
 vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
 vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
 vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
 vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
 vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
 vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
 vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
 vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
 vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
