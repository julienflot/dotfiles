return {
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            smear_between_buffers = false,
            smear_insert_mode = false,
            scroll_buffer_space = false,
        },
    },
    {
        'echasnovski/mini.surround',
        version = '*',
        opts = {
        }
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        opts = {
            enable = true
        }
    },
    {
        "f-person/auto-dark-mode.nvim",
        opts = {
            fallback = "light",
            set_dark_mode = function()
                vim.api.nvim_set_option_value("background", "dark", {})
                vim.cmd("colorscheme catppuccin-mocha")
            end,
            set_light_mode = function()
                vim.api.nvim_set_option_value("background", "light", {})
                vim.cmd("colorscheme catppuccin-latte")
            end,
            update_interval = 3000
        }
    },
    {
        'stevearc/oil.nvim',
        opts = {
            default_file_explorer = true,
            columns = {
                "icon",
                "size"
            },
            float = {
                padding = 2,
                max_width = 80,
                max_height = 25,
                border = "",
            }
        },
        keys = {
            { "<leader>of", function() require("oil").open_float() end },
        },
        lazy = false,
    }
}
