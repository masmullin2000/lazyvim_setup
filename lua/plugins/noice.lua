return {
    {
        "noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true,
            },
            views = {
                hover = {
                    size = {
                        max_width = 80,
                    },
                    border = {
                        style = "rounded",
                        padding = { 0, 2 },
                    },
                    win_options = {
                        winhighlight = "Normal:MyPmenu,FloatBorder:MyPmenu,CursorLine:MyPmenuSel,Search:None",
                    },
                },
            },
        },
    },
}

