-- local actions = require("telescope.actions")
return {
    "ibhagwan/fzf-lua",
    keys = {
        { "<c-k>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
        { "<c-i>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
    },
}
