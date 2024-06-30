vim.g.mapleader = " " -- Set the leader key to space

-- Open file explorer with <leader>pv (leader is space, so space+pv)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected line/block of text in visual mode down with J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Move selected line/block of text in visual mode up with K
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join the current line with the next line and keep the cursor in place with J
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down and center the cursor with Ctrl-d
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Scroll up and center the cursor with Ctrl-u
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move to next search result and center the cursor with n
vim.keymap.set("n", "n", "nzzzv")

-- Move to previous search result and center the cursor with N
vim.keymap.set("n", "N", "Nzzzv")

-- -- Start Vim-With-Me session with <leader>vwm
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)

-- -- Stop Vim-With-Me session with <leader>svwm
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- Paste and replace the selected text without copying it with <leader>p in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank (copy) to system clipboard in normal and visual mode with <leader>y
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Yank (copy) entire line to system clipboard in normal mode with <leader>Y
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to the black hole register (not copied) in normal and visual mode with <leader>d
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Map Ctrl-C to Escape in insert mode with Ctrl-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Ex mode with Q
vim.keymap.set("n", "Q", "<nop>")

-- Open a new tmux window with tmux-sessionizer with Ctrl-f
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format the current buffer with <leader>f
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Go to the next item in the quickfix list and center the cursor with Ctrl-k
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Go to the previous item in the quickfix list and center the cursor with Ctrl-j
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Go to the next item in the location list and center the cursor with <leader>k
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Go to the previous item in the location list and center the cursor with <leader>j
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word under the cursor globally with confirmation with <leader>s
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable with <leader>x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open the packer.lua file with <leader>vpp
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- Start the CellularAutomaton make_it_rain effect with <leader>mr
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Source (reload) the current vim configuration with <leader><leader>
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Focus on NvimTree file explorer with Ctrl-r
vim.keymap.set("n", "<C-r>", ":NvimTreeFocus<CR>")

-- Save the current buffer with Ctrl-s
vim.keymap.set("n", "<C-s>", "<C-c>:w<CR>")

-- Format the entire buffer with Ctrl-i
vim.keymap.set("n", "<C-i>", "ggVG=")

-- Move current line down with Ctrl-j
vim.keymap.set("n", "<C-j>", "ddp")

-- Move current line up with Ctrl-k
vim.keymap.set("n", "<C-k>", "ddkP")

-- Navigate to the previous buffer with Alt-, (Alt+comma)
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>')

-- Navigate to the next buffer with Alt-. (Alt+period)
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>')

-- Close the current buffer with Alt-c (Alt+c)
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>')
