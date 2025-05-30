return {
    -- See repo for keybinds (gc{motion}, gcc)
    { "tpope/vim-commentary", lazy = true, cmd = { "Commentary" }, event = "VeryLazy" },
    -- See repo for keybinds (cs{cur}{new}, cst<html>, ds{cur}, ys{motion}{new})
    -- cs = change surround, ds = delete surround, ys = you surround
    { "tpope/vim-surround", lazy = true, event = "VeryLazy" },
    {
        "stevearc/conform.nvim",
        lazy = true,
        event = "VeryLazy",
    },
    -- check the particular tags README.md for which version of neovim treesitter supports
    {
        'folke/snacks.nvim',
        lazy = false,
        opts = {
            picker = { enabled = true },
        },
        keys = {
            { "<leader>u", function () Snacks.picker.undo() end, desc = "Undo History" },
        }
    },
    -- be careful using main, it always supports the _latest_ stable version of neovim
    -- so it may update on you and break :(
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        tag = "v0.9.3",
        opts = {
            auto_install = true,
            highlight = {
                enable = true
            }
        },
        config = function (plugin, opts)
            require('nvim-treesitter.configs').setup(opts)
        end
    },
    { 'nvim-treesitter/nvim-treesitter-context', lazy = false },
}
