-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
--
return {
    -- colorschemes
    { "ellisonleao/gruvbox.nvim", opts = {
        contrast = "hard",
    } },

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
