-- leader --
vim.g.mapleader = " "
vim.b.mapleader = " "
vim.g.maplocalleader = "\\"
vim.b.maplocalleader = "\\"
------------

local keymap = vim.keymap

-- genral --
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "+", "<C-a>") -- increment number
keymap.set("n", "-", "<C-x>") -- decrement number

-- saving --
keymap.set("n", "<c-s>", ":w<CR>", { desc = "Save current file" })
keymap.set({ "n", "v" }, "<leader>s", ":w<CR>", { desc = "Save current file" })
keymap.set("i", "<c-s>", "<ESC>:w<CR>a", { desc = "Save current file" })
keymap.set({ "n", "v" }, "<leader>w", ":wq<CR>")
keymap.set({ "n", "v" }, "<leader>q", ":q!<CR>")
------------

-- window navigation
keymap.set("n", "<c-j>", "lua require('tmux').move_bottom()<cr>", { silent = true, desc = "Move down" })
keymap.set("n", "<c-h>", "lua require('tmux').move_left()<cr>", { silent = true, desc = "Move left" })
keymap.set("n", "<c-k>", "lua require('tmux').move_top()<cr>", { silent = true, desc = "Move up" })
keymap.set("n", "<c-l>", "lua require('tmux').move_right()<cr>", { silent = true, desc = "Move right" })
-- window splits
keymap.set("n", "<leader>h", ":split<Space>", { desc = "split" })
keymap.set("n", "<leader>v", ":vsplit<Space>", { desc = "vsplit" })
-- tabs
keymap.set("n", "<leader>tx", ":tabclose<CR>", { silent = true, desc = "Close tab" })
keymap.set("n", "<leader>tc", ":tabnew<CR>", { silent = true, desc = "New tab" })
keymap.set("n", "<leader>to", ":tabonly<CR>", { silent = true, desc = "Only tab" })
keymap.set("n", "<S-l>", ":tabn<CR>", { silent = true, desc = "Next tab" })
keymap.set("n", "<S-h>", ":tabp<CR>", { silent = true, desc = "Prev tab" })
keymap.set("n", "<leader>tl", ":+tabmove<CR>", { silent = true, desc = "Move to next tab" })
keymap.set("n", "<leader>th", ":-tabmove<CR>", { silent = true, desc = "Move to prev tab" })
-- keymap.set("n", "<leader>tb", "<CMD>BufferLinePick<CR>")
-- keymap.set("n", "<leader>tc", "<CMD>BufferLinePickClose<CR>")
