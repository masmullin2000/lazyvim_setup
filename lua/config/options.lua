-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local g = vim.g

g.mapleader = "\\"
g.autoformat = false

g.copiolt_no_tab_map = true
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

g.neovide_transparency=0.9
g.neovide_cursor_vfx_mode = "torpedo"
g.neovide_scroll_animation_length = 0.3
g.neovide_cursor_animation_length = 0.05
g.neovide_cursor_trail_length = 0.8
vim.o.guifont = "Lilex Nerd Font Mono:h16"
