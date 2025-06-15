return {
    {
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
    },
    {
        "mrcjkb/rustaceanvim",
        opts = {
            server = {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<leader>cR", function()
                        vim.cmd.RustLsp("codeAction")
                    end, { desc = "Code Action", buffer = bufnr })
                    vim.keymap.set("n", "<leader>dr", function()
                        vim.cmd.RustLsp("debuggables")
                    end, { desc = "Rust Debuggables", buffer = bufnr })
                    vim.keymap.set("n", "<S-k>", function()
                        vim.cmd.RustLsp("hover", "actions")
                    end, { desc = "Hover", buffer = bufnr })
                end,
                default_settings = {
                    -- rust-analyzer language server configuration
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = false,
                            loadOutDirsFromCheck = true,
                            buildScripts = {
                                enable = true,
                            },
                        },
                        -- Add clippy lints for Rust.
                        checkOnSave = true,
                        procMacro = {
                            enable = true,
                            ignored = {
                                ["async-trait"] = { "async_trait" },
                                ["napi-derive"] = { "napi" },
                                ["async-recursion"] = { "async_recursion" },
                            },
                        },
                        rustfmt = { extraArgs = { "+nightly" } },
                    },
                },
            },
        },
    },
}
