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

-- Replace word under cursor across entire buffer
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- buffers
keymap.set("n", "<leader>b1", ":LualineBuffersJump 1<CR>", { silent = true })
keymap.set("n", "<leader>b2", ":LualineBuffersJump 2<CR>", { silent = true })
keymap.set("n", "<leader>b3", ":LualineBuffersJump 3<CR>", { silent = true })
keymap.set("n", "<leader>b4", ":LualineBuffersJump 4<CR>", { silent = true })
keymap.set("n", "<leader>b5", ":LualineBuffersJump 5<CR>", { silent = true })
keymap.set("n", "<S-k>", ":bnext<CR>", { silent = true, desc = "Next Buffer" })
keymap.set("n", "<S-j>", ":bprevious<CR>", { silent = true, desc = "Prev Buffer" })
keymap.set("n", "<S-x>", ":bdelete<CR>", { silent = true, desc = "Delete Buffer" })

-- window navigation
keymap.set("n", "<c-j>", "lua require('tmux').move_bottom()<cr>", { silent = true, desc = "Move down" })
keymap.set("n", "<c-h>", "lua require('tmux').move_left()<cr>", { silent = true, desc = "Move left" })
keymap.set("n", "<c-k>", "lua require('tmux').move_top()<cr>", { silent = true, desc = "Move up" })
keymap.set("n", "<c-l>", "lua require('tmux').move_right()<cr>", { silent = true, desc = "Move right" })
-- window splits
keymap.set("n", "<leader>h", ":split<CR>", { desc = "split" })
keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "vsplit" })
-- tabs
keymap.set("n", "<leader>tx", ":tabclose<CR>", { silent = true, desc = "Close tab" })
keymap.set("n", "<leader>tc", ":tabnew<CR>", { silent = true, desc = "New tab" })
keymap.set("n", "<leader>to", ":tabonly<CR>", { silent = true, desc = "Only tab" })
keymap.set("n", "<leader>tl", ":+tabmove<CR>", { silent = true, desc = "Move to next tab" })
keymap.set("n", "<leader>th", ":-tabmove<CR>", { silent = true, desc = "Move to prev tab" })
