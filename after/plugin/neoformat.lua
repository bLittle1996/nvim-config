vim.g.neoformat_try_node_exe = true
vim.g.neoformat_enabled_javascript = { "prettier" }
vim.g.neoformat_enabled_typescript = { "prettier" }
vim.g.neoformat_enabled_json = { "prettier" }
vim.g.neoformat_enabled_css = { "prettier" }
vim.g.neoformat_enabled_scss = { "prettier" }
vim.g.neoformat_enabled_go = { "gofmt" }
vim.g.neoformat_enabled_rust = { "rustfmt" }
vim.api.nvim_create_autocmd(
    "BufWritePre",
    { pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.scss", "*.css", "*.json", "*.go", "*.rs" }, command = "Neoformat" }
)


vim.keymap.set("n", "<leader>mm", vim.cmd.Neoformat) 
