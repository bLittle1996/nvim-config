return {
    {
        'ThePrimeagen/harpoon',
        lazy = true,
        branch = "harpoon2",
        dependencies = {{ 'nvim-lua/plenary.nvim' }},
        keys = {
            { "<C-e>", function () require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end,  desc = "Harpoon: open pinned files"},
            { "<leader>a", function () require('harpoon'):list():add() end,  desc = "Harpoon: add current file to pinned list"},
            { "<leader>1", function () require('harpoon'):list():select(1) end,  desc = "Harpoon: open first file in pinned list"},
            { "<leader>2", function () require('harpoon'):list():select(2) end,  desc = "Harpoon: open second file in pinned list"},
            { "<leader>3", function () require('harpoon'):list():select(3) end,  desc = "Harpoon: open third file in pinned list"},
            { "<leader>4", function () require('harpoon'):list():select(4) end,  desc = "Harpoon: open fourth file in pinned list"},
        }
    },
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        event = "VeryLazy",
        init = function ()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
        opts = {
            view = {
                number = true,
                relativenumber = true,
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                severity = { min = vim.diagnostic.severity.ERROR }
            },
        },
        keys = {
            { 
                "<leader>fe", 
                "<cmd>NvimTreeFindFile<cr>",
                desc = "File Explorer" 
            },
        },
        dependencies = {
            {'nvim-tree/nvim-web-devicons'}
        }
    },
    { 
        'folke/snacks.nvim',
        lazy = false,
        opts = {
            picker = { enabled = true },
        },
        keys = {
            { "<leader>ff", function () Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>fg", function () Snacks.picker.grep() end, desc = "Find by grep" },
            { "<leader>vap", function () Snacks.picker.diagnostics() end, desc = "View all diagnostics" },
            { "<leader>vsp", function () Snacks.picker.diagnostics_buffer() end, desc = "View some diagnostics" },
            { "<leader>man", function () Snacks.picker.help() end, desc = "Help" },
            { "<leader>vnl", function () Snacks.picker.notifications() end, desc = "Notification History" },
            { "<leader>reg", function () Snacks.picker.registers() end, desc = "Registers" },
            { "<leader>buf", function () Snacks.picker.buffers() end, desc = "Buffers" },
        }
    }
}

