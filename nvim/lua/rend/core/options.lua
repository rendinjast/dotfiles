local opt = vim.opt

-- persian support --
opt.termbidi = true

-- line numbers --
opt.relativenumber = true
opt.number = true

-- tabs & indentation --
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- hide buffer line --
opt.showtabline = 0

-- line wrapping --
opt.wrap = false

-- search settings --
opt.ignorecase = true
opt.smartcase = true

-- appearance --
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cursorline = true

-- backspace --
opt.backspace = "indent,eol,start"

-- clipboard --
opt.clipboard:append "unnamedplus"

-- split windows --
opt.splitright = true
opt.splitbelow = true

-- disable netrw --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.fillchars = { eob = " " } -- hide tilda

opt.iskeyword:append "-" -- include (-) as word
