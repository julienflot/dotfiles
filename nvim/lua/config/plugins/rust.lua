local lsp_utils = require("config.lsp_utils")

return {
    'rust-lang/rust.vim',
    config = function()
        vim.g.rustfmt_autosave = 0
    end,
    -- {
    --     'saecki/crates.nvim',
    --     tag = 'stable',
    --     opts = {
    --         lsp = {
    --             enabled = true,
    --             action = true,
    --             completion = true,
    --             hover = true,
    --             on_attach = lsp_utils.on_attach
    --         }
    --     }
    -- }
}
