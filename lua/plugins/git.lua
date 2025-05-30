return {
    {
        "tpope/vim-fugitive",
        lazy = true,
        cmd = { "Git", "G" },
        keys = {
            { "<leader>gs", "<cmd>G status<cr>", desc = "git status" },
            { "<leader>gg", "<cmd>Git<cr>", desc = "git window" },
        },
    },
    {
        "folke/snacks.nvim",
        lazy = false,
        opts = {
            picker = { enabled = true },
            git = { enabled = true },
            styles = {
                blame_line = {
                    width = 0.75,
                },
            },
        },
        keys = {
            {
                "<leader>gvc",
                function()
                    Snacks.picker.git_log()
                end,
                desc = "git commits",
            },
            {
                "<leader>gvb",
                function()
                    Snacks.picker.git_branches()
                end,
                desc = "git branches",
            },
            {
                "<leader>gb",
                function()
                    Snacks.git.blame_line()
                end,
                desc = "git blame",
            },
        },
    },
}
