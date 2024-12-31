local luasnip = require("luasnip")

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0
        and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s")
            == nil
end

return {
    -- {
    --     "L3MON4D3/LuaSnip",
    --     -- follow latest release.
    --     version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    --     -- install jsregexp (optional!).
    --     build = "make install_jsregexp",
    -- },
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "default",
                ["<CR>"] = { "select_and_accept", "fallback" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<C-i>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_next", "fallback" },
            },
            sources = {
                default = { "copilot" },
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
    -- {
    --     "hrsh7th/nvim-cmp",
    --     config = function()
    --         local cmp = require("cmp")
    --         require("cmp").setup({
    --             snippet = {
    --                 expand = function(args)
    --                     require("luasnip").lsp_expand(args.body)
    --                 end,
    --             },
    --             mapping = {
    --                 ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --                 ["<C-k>"] = cmp.mapping(function(fallback)
    --                     if cmp.visible() then
    --                         cmp.select_next_item()
    --                     -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
    --                     -- that way you will only jump inside the snippet region
    --                     elseif luasnip.expand_or_jumpable() then
    --                         luasnip.expand_or_jump()
    --                     elseif has_words_before() then
    --                         cmp.complete()
    --                     else
    --                         fallback()
    --                     end
    --                 end, { "i", "s" }),
    --                 ["<C-i>"] = cmp.mapping(function(fallback)
    --                     if cmp.visible() then
    --                         cmp.select_prev_item()
    --                     elseif luasnip.jumpable(-1) then
    --                         luasnip.jump(-1)
    --                     elseif has_words_before() then
    --                         cmp.complete()
    --                     else
    --                         fallback()
    --                     end
    --                 end, { "i", "s" }),
    --                 ["<C-j>"] = cmp.mapping(function(fallback)
    --                     if cmp.visible() then
    --                         cmp.abort()
    --                     else
    --                         fallback()
    --                     end
    --                 end, { "i", "s" }),
    --             },
    --             window = {
    --                 border = "rounded",
    --                 -- set to true, cmp will show documentation in new floating window
    --                 documentation = {
    --                     border = "double",
    --                     winhighlight = "Normal:MyPmenu,FloatBorder:MyPmenu,CursorLine:MyPmenuSel,Search:None",
    --                 },
    --                 completion = {
    --                     border = "rounded",
    --                     winhighlight = "Normal:MyPmenu,FloatBorder:MyPmenu,CursorLine:MyPmenuSel,Search:None",
    --                 },
    --             },
    --             sources = cmp.config.sources({
    --                 { name = "nvim_lsp" },
    --                 { name = "copilot" },
    --                 --{ name = "cody" },
    --                 { name = "luasnip" },
    --                 { name = "path" },
    --                 { name = "buffer" },
    --             }),
    --         })
    --     end,
    -- },
}
