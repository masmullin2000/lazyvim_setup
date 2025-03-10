-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- open new window
map({ "n", "v" }, "<C-n>", ":!~/bin/open_nvim.sh<cr><cr>")

-- movement
map({ "n", "v" }, "j", "h", { desc = "move left" })
map({ "n", "v" }, "k", "j", { desc = "move down" })
map({ "n", "v" }, "i", "k", { desc = "move up" })
map({ "n", "v" }, "h", "i", { desc = "insert mode" })
map("i", "jj", "<ESC>", { desc = "normal mode" })

-- split movement
map("n", "<C-j>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-k>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-i>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- split reposition 
map("n", "<SC-j>", "<C-w><S-h>", { desc = "Go to left window", remap = true })
map("n", "<SC-k>", "<C-w><S-j>", { desc = "Go to lower window", remap = true })
map("n", "<SC-i>", "<C-w><S-k>", { desc = "Go to upper window", remap = true })
map("n", "<SC-l>", "<C-w><S-l>", { desc = "Go to right window", remap = true })
map("n", "<C-y>", ":vsplit<cr>", { desc = "Go to right window", remap = true })
map("n", "<C-,>", ":split<cr>", { desc = "Go to right window", remap = true })

-- tabs
map("n", "<C-T>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "gt", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "gT", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<S-j>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- terminal
map("n", "<leader>tt", ":ToggleTerm direction=float<cr>", { desc = "Terminal" })
map("n", "<leader>tk", ":ToggleTerm direction=horizontal<cr>", { desc = "Terminal" })
map("n", "<leader>tj", ":ToggleTerm direction=vertical size=60<cr>", { desc = "Terminal" })
map("t", "<leader>tt", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
map("n", "<A-j>", "zc", { desc = "Close fold" })
map("n", "<A-l>", "zo", { desc = "Open fold" })

local fullscreen = function()
    vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
end
