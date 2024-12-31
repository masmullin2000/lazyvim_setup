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

        -- "neovim/nvim-lspconfig",
        -- opts = function(_, opts)
        --     local keys = require("lazyvim.plugins.lsp.keymaps").get()
        --
        --     keys[#keys + 1] = { "<C-k>", false, mode = "i" } -- does not work, <C-k> still can active in insert mode
        --     keys[#keys + 1] = { "gK", vim.lsp.buf.hover, desc = "show hover" } -- changed as it should be
        --
        --     opts.diagnostics = { -- set border for diagnostics floating
        --         float = {
        --             border = "rounded",
        --         },
        --     }
        -- end,
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
                    -- vim.keymap.set("n", "<S-k>", function()
                    --     vim.cmd.RustLsp("hover", "actions")
                    -- end, { desc = "Hover", buffer = bufnr })
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
                    },
                },
            },
        },
    },
}
