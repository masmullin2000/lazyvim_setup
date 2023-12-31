require("bufferline").setup({
    highlights = {
        separator_selected = {
            fg = "#CC1044",
        },
        separator = {
            fg = "#661000",
        },
    },
})

return {
    {
        "akinsho/bufferline.nvim",
        opts = {
            options = {
                mode = "tabs",
                themeable = true,
                offsets = {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    separator = true,
                },
                show_close_icon = false,
                show_buffer_close_icons = false,
                show_duplicate_prefix = false,
                separator_style = "slant",
                always_show_bufferline = true,
            },
        },
    },
}
