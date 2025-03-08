return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "none",
                ["<C-k>"] = { "select_next", "fallback" },
                ["<C-i>"] = { "select_prev", "fallback" },
                ["<CR>"] = { "select_and_accept", "fallback" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
            },
            sources = {
                default = { "copilot", "lsp", "buffer" },
                providers = {
                    copilot = {
                        name = "copilot",
                        module = "blink-cmp-copilot",
                        score_offset = 100,
                        async = true,
                    },
                },
            },
        },
    },
}
