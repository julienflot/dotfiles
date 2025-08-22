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
        "nvzone/typr",
        dependencies = "nvzone/volt",
        opts = {},
        cmd = { "Typr", "TyprStats" },
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
            update_interval = 1000
        }
    }
}
