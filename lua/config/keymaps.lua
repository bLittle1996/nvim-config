vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- LSP default keymaps:
-- https://neovim.io/doc/user/lsp.html#lsp-defaults
-- MODE | KEYMAPS | FUNCTION
--    n | gd      | go to definition
--    n | grr     | show references
--   nv | gra     | code actions
--    n | gri     | show implementations
--    n | grn     | rename
--    n | K       | help popup :)
--    n | gq{mot} | format the lines in the motion

vim.keymap.set("n", "<leader>ee", function () vim.diagnostic.config({ virtual_text = true }) end, { desc = "Enable diagnostic text" })
vim.keymap.set("n", "<leader>ed", function () vim.diagnostic.config({ virtual_text = false }) end, { desc = "Disable diagnostic text" })
