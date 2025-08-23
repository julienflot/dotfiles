return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            npairs.setup({})

            local Rule = require("nvim-autopairs.rule")
            npairs.add_rule(Rule("$", "$", "typst"))
            npairs.add_rule(Rule("/*", "*/", { "c", "cpp" }))
        end
    },
    {
        "folke/todo-comments.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    },
    {
        "folke/trouble.nvim",
        lazy = false,
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            { "<leader>xx", "<cmd>Trouble toggle diagnostics<cr>", },
            { "<leader>xq", "<cmd>Trouble toggle qflist<cr>", },
            { "<leader>xt", "<cmd>Trouble toggle todo<cr>", },
        }
    },
    {
        "tiagovla/scope.nvim",
        lazy = false,
        opts = {}
    },
    {
        'rmagatti/auto-session',
        lazy = false,
        opts = {
            suppressed_dirs = { '~/', '~/Downloads', '/' },
            session_lens = {
                load_on_setup = true,
                previewer = false,
            }
        },
        keys = {
            { "<leader>os", "<cmd>Telescope session-lens<cr>" }
        }
    },
    {
        "j-hui/fidget.nvim",
        opts = {},
    },
    {
        "barrett-ruth/live-server.nvim",
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        opts = {}
    }
}
