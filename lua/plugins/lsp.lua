return {
    -- Now that nvim 0.11 supports lsps way better, this is all we need!
    {
        "mason-org/mason-lspconfig.nvim",
        lazy = false,
        tag = "v2.0.0",
        config = function(plugin, opts)
            require("mason").setup({})
            require("mason-lspconfig").setup({})
            require("config.lsp")
        end,
        dependencies = {
            { "mason-org/mason.nvim", tag = "v2.0.0" },
            { "neovim/nvim-lspconfig", tag = "v2.2.0" },
        },
    },
}
