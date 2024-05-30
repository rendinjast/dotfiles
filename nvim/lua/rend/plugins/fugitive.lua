local function opts(desc)
  return { desc = "Git: " .. desc, noremap = true, silent = true, nowait = true }
end

local set = vim.api.nvim_set_keymap
set("n", "<leader>gs", "<CMD>G<CR>", opts "Git")
set("n", "<leader>gq", "<CMD>G<CR><CMD>q<CR>", opts "")
set("n", "<leader>gw", "<CMD>Gwrite<CR>", opts "")
set("n", "<leader>gr", "<CMD>Gread<CR>", opts "")
set("n", "<leader>gh", "<CMD>diffget //2<CR>", opts "")
set("n", "<leader>gl", "<CMD>diffget //3<CR>", opts "")
set("n", "<leader>gp", "<CMD>Git push<CR>", opts "")

return {
  "tpope/vim-fugitive",
}
