-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

map("i", "jk", "<Esc>")

-- LazyVim uses H/L for buffer switching; restore line start/end and move buffers to Tab
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

map("x", "p", '"_dP', { desc = "Paste without yanking" })
