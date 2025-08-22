M = {}

function M.on_attach(_, bufnr)
    -- little helper for keymaps
    local map = function(keybinding, action)
        vim.keymap.set("n", keybinding, action, { silent = true, buffer = bufnr })
    end

    local builtin_telescope = require('telescope.builtin')

    map("gd", vim.lsp.buf.definition)
    map("gD", builtin_telescope.lsp_definitions)
    map("<leader>gi", builtin_telescope.lsp_implementations)
    map("<leader>lr", builtin_telescope.lsp_references)
    map("<leader>lf", vim.lsp.buf.format)
    map("<leader>la", vim.lsp.buf.code_action)
    map("<leader>li", "<cmd>LspInfo<cr>")
    map("<leader>ld", vim.diagnostic.open_float)
    map("<leader>lD", "<cmd>Telescope diagnostics<cr>")
    map("<F2>", vim.lsp.buf.rename)
    map("K", vim.lsp.buf.hover)
end

return M
