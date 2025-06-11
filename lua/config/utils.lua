local M = {}

-- Allows us to import custom files that don't require potential conflicts with git.
-- This can allow per machine keybinds (such as work specific configs)
M.maybe_import_custom_config = function(name)
    local config_path = vim.fn.stdpath("config")
    local file = io.open(config_path .. "/lua/config/custom-" .. name .. ".lua", "r")
    if file ~= nil then
        io.close(file)
        require("config.custom-" .. name)
    end
end

return M
