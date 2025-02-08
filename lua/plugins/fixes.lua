return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        local keys = require("lazyvim.plugins.lsp.keymaps").get()

        keys[#keys + 1] = { "<C-k>", false, mode = "i" }
        keys[#keys + 1] = { "<C-i>", false, mode = "i" }

        opts.diagnostics = { -- set border for diagnostics floating
            float = {
                border = "rounded",
            },
        }
    end,
}
