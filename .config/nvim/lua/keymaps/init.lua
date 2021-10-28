vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap


-- naviagate
map('n','<C-h>','<C-w>h',{noremap = true, silent = true})
map('n','<C-l>','<C-w>l',{noremap = true, silent = true})
map('n','<C-j>','<C-w>j',{noremap = true, silent = true})
map('n','<C-k>','<C-w>k',{noremap = true, silent = true})




-- basic stuff
map('i','jk','<Esc>',{noremap = true})
map('n','<leader>q',':q<CR>',{noremap = true, silent = true})
map('n','<leader>w',':wq<CR>',{noremap = true, silent = true})
map('v','<leader>s','<C-C>:update<CR>',{noremap = true, silent = true})
map('n','<leader>s',':update<CR>',{noremap = true, silent = true})
map("i", "<C-s>", "<ESC> :w<CR>", { noremap = true, silent = true })

-- formatter
map('n','<leader>f',':Neoformat<CR>',{})


-- comment toggle
map('n','<leader>/',':CommentToggle<CR>',{})
map('v','<leader>/',':CommentToggle<CR>',{})


-- NvimTree keys
map('n','<leader>e',':NvimTreeToggle<CR>',{noremap = true})
map('n','<C-b>',':NvimTreeToggle<CR>',{noremap = true})


-- Buffer line keys
map('n','<TAB>',':BufferLineCycleNext<CR>',{noremap = true, silent = true})
map('n','<S-TAB>',':BufferLineCyclePrev<CR>',{noremap = true, silent = true})


-- Telescope
map('n','ff',':Telescope find_files<CR>',{noremap = true})
map("n", "fw", "<CMD>Telescope grep_string<CR>", { noremap = true })

-- Saga
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("n", "gD", "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", { noremap = true, silent = true })
map("n", "gr", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", { noremap = true, silent = true })
map("n", "<C-Space>", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", { silent = true })
map("n", "<leader>ca", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", { noremap = true, silent = true })
map("v", "<leader>ca", "<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>", { noremap = true, silent = true })
map("n", "<leader>cr", "<cmd>lua require('lspsaga.rename').rename()<CR>", { noremap = true, silent = true })
map("n", "<leader>cf", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })
map("v", "<leader>cf", "<cmd>'<.'>lua vim.lsp.buf.range_formatting()<CR>", { noremap = true, silent = true })
map("n", "K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", { noremap = true, silent = true })
map("n", "<C-k>", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", { noremap = true, silent = true })
map("n", "[g", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", { noremap = true, silent = true })
map("n", "]g", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", { noremap = true, silent = true })
map("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { noremap = true, silent = true })
map("n", "<C-b>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { noremap = true, silent = true })
map("n", "<leader>cl", "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", { noremap = true, silent = true })

-- Open links under cursor in browser with gx
map("n", "gx", "<cmd>silent execute '!xdg-open ' . shellescape('<cWORD>')<CR>", { silent = true })

