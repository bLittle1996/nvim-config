vim.g.mapleader = " "

-- Open file browser
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
-- Visual selection movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep page jumping with cursor centralized
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
-- Delete but don't yank
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
-- Replace word in file
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Make left mouse button not move the cursor around when I click the window
vim.keymap.set("n", "<LeftMouse>", "");
vim.keymap.set("i", "<LeftMouse>", "");
vim.keymap.set("v", "<LeftMouse>", "");

