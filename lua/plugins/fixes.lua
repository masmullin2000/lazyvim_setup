return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        local keys = require("lazyvim.plugins.lsp.keymaps").get()

        keys[#keys + 1] = { "<C-k>", false, mode = "i" } -- does not work, <C-k> still can active in insert mode

        opts.diagnostics = { -- set border for diagnostics floating
            float = {
                border = "rounded",
            },
        }
    end,
}
