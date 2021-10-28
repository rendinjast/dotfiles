local g = vim.g
local o = vim.o

-- color schema
vim.cmd('colorscheme material')
g.material_style = "deep ocean"
g.tokyonight_style = "night"
g.calvera_contrast = 1
vim.cmd('let ayucolor="dark"')
-------

vim.cmd('filetype plugin indent on')
o.shortmess = o.shortmess .. 'c'
o.hidden = true
o.clipboard = "unnamedplus"
o.pumheight = 10
vim.cmd('set shiftwidth=2')
--o.cmdheight = 1
o.whichwrap = 'b,s,<,>,[,],h,l'
o.fileencoding = 'utf-8'
vim.cmd('set fillchars+=eob:⠀')
o.ignorecase = true
o.mouse = "a"

-- Numbers
o.cursorline = true
o.number = true
o.numberwidth = 1
o.relativenumber = true

o.signcolumn      = "yes"
o.splitbelow      = true
o.splitright      = true
o.autoindent      = true
o.expandtab       = true
o.tabstop         = 2
o.termguicolors = true
o.updatetime      = 200
o.timeoutlen      = 300
-- o.undofile = options.permanent_undo


