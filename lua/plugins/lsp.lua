return {
    -- Now that nvim 0.11 supports lsps way better, this is all we need!
    { 
        "mason-org/mason-lspconfig.nvim", 
        lazy = false, 
        config = function (plugin, opts)
            require('mason').setup({}) 
            require('mason-lspconfig').setup({}) 
        end,
        dependencies = {
            { "mason-org/mason.nvim" },
            { "neovim/nvim-lspconfig" },
        }
    }
}
