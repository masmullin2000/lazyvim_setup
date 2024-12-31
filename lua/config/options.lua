-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local g = vim.g

g.mapleader = "\\"
g.autoformat = false

g.copilot_no_tab_map = true
g.copilot_assume_mapped = true

local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.relativenumber = false
opt.colorcolumn = "80"
opt.background = "dark"
opt.termguicolors = true

vim.api.nvim_set_hl(0, "MyPmenu", { bg = "#212C34", fg = "NONE" })
vim.api.nvim_set_hl(0, "MyPmenuSel", { bg = "#494D5A", fg = "#F2C5CA" })

g.neovide_transparency = 0.9
g.neovide_cursor_vfx_mode = "torpedo"
g.neovide_scroll_animation_length = 0.3
g.neovide_cursor_animation_length = 0.05
g.neovide_cursor_trail_length = 0.8
vim.o.guifont = "Lilex Nerd Font Mono:h16"

-- if vim.g.neovide then
vim.keymap.set("v", "<C-c>", '"+y') -- Copy
vim.keymap.set("n", "<C-v>", '"+P') -- Paste normal mode
vim.keymap.set("v", "<C-v>", '"+P') -- Paste visual mode
vim.keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
vim.keymap.set("i", "<C-v>", "<C-R>+") -- Paste insert mode
-- end

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    map("t", "<esc>", [[<C-\><C-n>]], { desc = "escape" })
    map("t", "jj", [[<C-\><C-n>]], { desc = "escape" })
    map({ "t", "i" }, "<C-j>", [[<cmd>wincmd h<cr>]], { desc = "move left" })
    map({ "t", "i" }, "<C-l>", [[<cmd>wincmd l<cr>]], { desc = "move right" })
    map({ "t", "i" }, "<C-k>", [[<cmd>wincmd j<cr>]], { desc = "move right" })
    map({ "t", "i" }, "<C-i>", [[<cmd>wincmd k<cr>]], { desc = "move right" })
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
