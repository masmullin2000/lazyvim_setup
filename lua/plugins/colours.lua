-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
--
return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            terminal_colors = true,
            contrast = "hard",
            bold = true, -- Enable bold font
            italic = {
                strings = false,
                emphasis = false,
                comments = true,
                operators = false,
                folds = false,
            },
            underline = true,
            undercurl = true,
            strikethrough = true,
            dim_inactive = false,
            transparent_mode = true,
            -- You can also override specific highlight groups or palette colors here
            -- palette_overrides = {},
            -- overrides = {},
        },
        priority = 1000,
        -- config = function(_, opts)
        --     require("gruvbox").setup(opts)
        --     vim.cmd("colorscheme gruvbox")
        -- end,
    },

    { "projekt0n/github-nvim-theme" },
    { "sainnhe/sonokai" },
    { "sainnhe/gruvbox-material" },
    { "lunarvim/horizon.nvim" },
    { "jacoborus/tender.vim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "github_dark_colorblind",
            -- colorscheme = "github_dark"
            -- colorscheme = "tender",
            colorscheme = "gruvbox",
            -- colorscheme = "sonokai",
            -- colorscheme = "gruvbox-material",
            -- colorscheme = "horizon",
        },
    },
}
