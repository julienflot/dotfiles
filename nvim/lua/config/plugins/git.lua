return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
        lazy = false,
        keys = {
            { "<leader>ghu", "<cmd>Gitsigns reset_hunk<cr>" },
            { "<leader>ghn", "<cmd>Gitsigns next_hunk<cr>" },
            { "<leader>ghp", "<cmd>Gitsigns prev_hunk<cr>" },
            { "<leader>ghK", "<cmd>Gitsigns preview_hunk<cr>" },
            { "<leader>ghs", "<cmd>Gitsigns stage_hunk<cr>" },
        }
    },
    {
        "tpope/vim-fugitive",
        lazy = false,
        keys = {
            { "<leader>gc", "<cmd>Git log --oneline<cr>" }
        }
    },
    {
        "sindrets/diffview.nvim",
        opts = {},
        lazy = false,
        keys = {
            { "<leader>gdd", "<cmd>DiffviewOpen<cr>" },
            { "<leader>gdc", "<cmd>DiffviewClose<cr>" },
        }
    }
}
