return {
    {"mason-org/mason.nvim", lazy = true, cmd = { "Mason" }},
    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = {
            triggers = {}
        },
        keys = {
            { "<leader>?", function () require('which-key').show({global=true}) end, desc = "Show keymaps" }
        },
    },
    {
        "folke/snacks.nvim",
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        }
    }
}
