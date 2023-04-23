-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
-- Spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Smart Indent
vim.opt.smartindent = true
-- Line Wrapping
vim.opt.wrap = false
-- File History
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- Search highlighting and behaviour
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Make sure we got some colours
vim.opt.termguicolors = true;
-- Scroll behaviour
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
-- Update stuff really quick like
vim.opt.updatetime = 50
-- Show a column at N chars over for long line detection idk
vim.opt.colorcolumn = "80"
-- Global <leader> for hotkeys
vim.g.mapleader = " "

-- Enable error diagnostic inline text by default, underline errors
vim.diagnostic.config({ virtual_text = true, underline = true })
