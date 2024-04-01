vim.g.neoformat_try_node_exe = true -- try to use npm module prettier instead of global

local formatGroup = vim.api.nvim_create_augroup("Formatters", { clear = true })
local formatHotkey = "<leader>mm"

---registerFormatter takes a formatter and sets up an autocmd to run before writes for the specified file patterns. It also registers it for use using the formatting hotkey for that specific file type.
---@param formatter string
---@param pattern table
local function registerFormatter(formatter, pattern)
    local cmd = "Neoformat " .. formatter
    vim.api.nvim_create_autocmd(
        "BufWritePre",
        {
            group = formatGroup,
            pattern = pattern,
            command = "Neoformat " .. formatter
        }
    )
end


vim.keymap.set("n", formatHotkey, function ()
    local buffer = vim.api.nvim_buf_get_name(0) -- path to current buffer
    local filename = vim.fs.basename(buffer) -- just the filename
    local firstDotPos = string.reverse(filename):find("%.")

    -- if no extension, then do not format
    if firstDotPos == nil then
        return
    end

    local extension = string.sub(filename, -firstDotPos)
    local formatters = vim.api.nvim_get_autocmds({ group = formatGroup })

    -- find a registered formatter that matches the file extension.
    for _, formatter in pairs(formatters) do
        -- remove * from pattern and compare (only works if *.js, *.formatmedifferent.js won't work)
        if formatter.pattern:sub(2) == extension then
            vim.cmd(formatter.command)
            return
        end
    end
end)


-- Working with JS/TS (prettier)
registerFormatter("prettier", { "*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.scss", "*.json" })
-- Go
registerFormatter("gofmt", { "*.go" })
-- Rust
registerFormatter("rustfmt", { "*.rs" })
-- Protobuf files
registerFormatter("clangformat", { "*.proto" })




