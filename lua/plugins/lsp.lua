return {
    "neovim/nvim-lspconfig",
    opts = {
        inlay_hints = { enabled = false },
        servers = {
            -- Ensure mason installs the server
            clangd = {
                capabilities = {
                    offsetEncoding = { "utf-16" },
                },
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
            },
        },
    },
}
