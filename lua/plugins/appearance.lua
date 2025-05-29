return {
    {
        'rebelot/kanagawa.nvim',
        init = function()
            vim.cmd("colorscheme kanagawa")
        end
    },
    {"nvim-tree/nvim-web-devicons", event = "VeryLazy" },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                theme = "auto",
                icons_enabled = true,
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'searchcount', 'encoding', { 'fileformat', icons_enabled = false }, 'filetype'},
                lualine_y = {'lsp_status'},
                lualine_z = {'location'},
            }
        }
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        tag = "v4.9.1",
        opts = {
            options = {
                diagnostics = "nvim_lsp",
                color_icons = true,
                get_element_icon = function(element)
                    local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
                    return icon, hl
                end,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left" ,
                        separator = true,
                    }
                },
            }
        },
    },
    {
        "folke/snacks.nvim", 
        lazy = false,
        opts = {
            input = { enabled = true },
            scroll = { enabled = true },
            notifier = { enabled = true },
            dashboard = {
                enabled = true,
                sections = {
                    { section = "header" },
                    { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
                    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    { section = "startup" },
                },
            },
        }
    }
}
