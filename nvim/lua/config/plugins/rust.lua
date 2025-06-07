return {
    'rust-lang/rust.vim',
    keys = {
        { "<leader>cb", "<cmd>Cargo build<cr>" },
        { "<leader>cb", "<cmd>Cargo build --release<cr>" },
        { "<leader>cr", "<cmd>Cargo run<cr>" },
        { "<leader>cR", "<cmd>Cargo run --release<cr>" },
        { "<leader>ct", "<cmd>Cargo test <cr>" },
    },
    config = function()
        vim.g.rustfmt_autosave = 0
    end
}
