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

local js_formatters = { "prettier" }
local js_filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
for _, ft in ipairs(js_filetypes) do
    add_formatter(ft, js_formatters)
end
