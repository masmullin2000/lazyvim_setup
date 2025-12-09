return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            ["*"] = {
                keys = {
                    { "<C-k>", false, mode = "i" },
                    { "<C-i>", false, mode = "i" },
                    { "<S-k>", false, mode = "n" },
                },
            },
        },
        diagnostics = {
            float = {
                border = "rounded",
            },
        },
    },
}
