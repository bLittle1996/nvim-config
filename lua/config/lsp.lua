local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Setup some hotkeys when an LspAttaches
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        -- Overwrite default hover, using nvim-cmp styling
        vim.keymap.set("n", "K", function()
            local opts = require("cmp").config.window.bordered()
            vim.lsp.buf.hover(opts)
        end, { buffer = true })
        -- Make gd go to definition
        vim.keymap.set("n", "gd", function()
            vim.lsp.buf.definition()
        end, { buffer = true })
    end,
})

vim.lsp.config("*", {
    capabilities = capabilities,
})

vim.lsp.config("ltex", {
    -- copied the defaults and took out html
    filetypes = {
        "bib",
        "gitcommit",
        "markdown",
        "org",
        "plaintex",
        "rst",
        "rnoweb",
        "tex",
        "pandoc",
        "quarto",
        "rmd",
        "context",
        "mail",
        "text",
    },
})

require("config.utils").maybe_import_custom_config("lsp")
