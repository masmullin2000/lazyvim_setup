-- vim.o.foldcolumn = "1" -- '0' is not bad
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true

return {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "BufReadPost", -- needed for folds to load in time
    keys = {
        {
            "zr",
            function()
                require("ufo").openFoldsExceptKinds({ "comment" })
            end,
            desc = " 󱃄 Open All Folds except comments",
        },
        {
            "zm",
            function()
                require("ufo").closeAllFolds()
            end,
            desc = " 󱃄 Close All Folds",
        },
    },

    init = function()
        -- INFO fold commands usually change the foldlevel, which fixes folds, e.g.
        -- auto-closing them after leaving insert mode, however ufo does not seem to
        -- have equivalents for zr and zm because there is no saved fold level.
        -- Consequently, the vim-internal fold levels need to be disabled by setting
        -- them to 99
        vim.opt.foldlevel = 99
        vim.opt.foldlevelstart = 99
        vim.o.foldcolumn = "0"
    end,
    opts = {
        provider_selector = function(_, ft, _)
            -- INFO some filetypes only allow indent, some only LSP, some only
            -- treesitter. However, ufo only accepts two kinds as priority,
            -- therefore making this function necessary :/
            local lspWithOutFolding = { "markdown", "sh", "css", "html", "python" }
            if vim.tbl_contains(lspWithOutFolding, ft) then
                return { "treesitter", "indent" }
            end
            return { "lsp", "indent" }
        end,
        -- open opening the buffer, close these fold kinds
        -- use `:UfoInspect` to get available fold kinds from the LSP
        close_fold_kinds_for_ft = {
            --default = { "imports", "comment" },
            --json = { "array" },
            --c = { "comment", "region" },
        },
        open_fold_hl_timeout = 300,
        -- fold_virt_text_handler = foldTextFormatter,
    },
}
