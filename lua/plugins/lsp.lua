return {
    "neovim/nvim-lspconfig",
    opts = {
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
