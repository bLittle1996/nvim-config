local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'ts_ls',
	'eslint',
	'lua_ls',
    'gopls',
    'html',
    'emmet_language_server'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Space>'] = cmp.mapping.complete()
})

lsp.nvim_workspace()
lsp.setup_nvim_cmp({ mapping = cmp_mappings })
lsp.set_preferences({
    sign_icons = {
        error = 'E',
        warning = 'W',
        info = 'I',
        hint = 'H',
    }
})
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

    -- start with errors being expanded
    vim.diagnostic.config({ virtual_text = true, underline = true });
    
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>ev", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>ee", function () vim.diagnostic.config({ virtual_text = true, underline = true }) end, opts)
    vim.keymap.set("n", "<leader>ed", function () vim.diagnostic.config({ virtual_text = false }) end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
