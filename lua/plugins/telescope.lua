local actions = require("telescope.actions")
return {
    "nvim-telescope/telescope.nvim",
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["<C-i>"] = actions.move_selection_previous,
                    ["<C-k>"] = actions.move_selection_next,
                },
                n = {
                    ["i"] = actions.move_selection_previous,
                    ["k"] = actions.move_selection_next,
                },
            },
        },
    },
}
