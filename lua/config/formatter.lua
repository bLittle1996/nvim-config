-- This file is loaded on the VeryLazy event.
-- Use :h Conform to learn more about your options
-- Use :Mason to install any missing formatters
-- Use :ConformInfo to see formatter status

local conform = require("conform")
local add_formatter = function(ft, opts)
    conform.formatters_by_ft[ft] = opts
end

add_formatter("lua", { "stylua" })
add_formatter("go", { "gofmt" })

local prettier_fts = { "javascript", "javascriptreact", "typescript", "typescriptreact", "html", "css", "scss" }
for _, ft in ipairs(prettier_fts) do
    add_formatter(ft, { "prettier" })
end

require("config.utils").maybe_import_custom_config("formatter")
