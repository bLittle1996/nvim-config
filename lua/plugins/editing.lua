return {
    -- See repo for keybinds (gc{motion}, gcc)
    {
        "tpope/vim-commentary",
        lazy = true,
        cmd = { "Commentary" },
        event = "VeryLazy",
    },
    -- See repo for keybinds (cs{cur}{new}, cst<html>, ds{cur}, ys{motion}{new})
    -- cs = change surround, ds = delete surround, ys = you surround
    { "tpope/vim-surround", lazy = true, event = "VeryLazy" },
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
        event = "VeryLazy",
        config = function(plugin, opts)
            print("setting up nvim cmp")
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-u>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "vsnip" },
                    { name = "buffer" },
                }),
            })

            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = { { name = "buffer" } },
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                    { name = "cmdline" },
                }),
                matching = { disallow_symbol_nonprefix_matching = false },
            })
        end,
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-vsnip" },
            { "hrsh7th/vim-vsnip" },
        },
    },
    {
        "stevearc/conform.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = {
            default_format_opts = {
                lsp_format = "fallback",
            },
            format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 499,
            },
            notify_on_error = true,
            notify_no_formatters = true,
        },
        keys = {
            {
                "<leader>mm",
                function()
                    require("conform").format()
                end,
                desc = "Format File. Tasty!",
            },
        },
    },
    -- check the particular tags README.md for which version of neovim treesitter supports
    {
        "folke/snacks.nvim",
        lazy = false,
        opts = {
            picker = { enabled = true },
        },
        keys = {
            {
                "<leader>u",
                function()
                    Snacks.picker.undo()
                end,
                desc = "Undo History",
            },
        },
    },
    -- be careful using main, it always supports the _latest_ stable version of neovim
    -- so it may update on you and break :(
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        tag = "v0.9.3",
        opts = {
            auto_install = true,
            highlight = {
                enable = true,
            },
        },
        config = function(plugin, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
    { "nvim-treesitter/nvim-treesitter-context", lazy = false },
}
