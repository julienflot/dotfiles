return {
    {
        "typicode/bg.nvim", lazy = false
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            no_italic = false,
            no_bold = false,
            styles = {
                comments = { "italic" },
                keywords = { "bold" }
            },
            integrations = {
                diffview = true
            }
        }
    },
}
