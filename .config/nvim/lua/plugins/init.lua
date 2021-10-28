return require('packer').startup(function(use)
  -- Packer can manage itself
use {'wbthomason/packer.nvim'}
use {'nvim-lua/plenary.nvim'}
use {"kyazdani42/nvim-web-devicons"}
use {'yashguptaz/calvera-dark.nvim'}
use {'bluz71/vim-nightfly-guicolors'}

-- themes
use {'marko-cerovac/material.nvim'}
use {'ayu-theme/ayu-vim'}
use {'folke/tokyonight.nvim'}
use {"projekt0n/github-nvim-theme"}

  -- usign treesitter for better sintax highlighting
use {"nvim-treesitter/nvim-treesitter",run = ":TSUpdate",config = "require('plugins.configs.treesitter')"}


-- Snippets & Language & Syntax
use {'windwp/nvim-autopairs',config = "require('plugins.configs.autopairs')", after = {'nvim-treesitter'}}
use {'terrortylor/nvim-comment',       config = "require('plugins.configs.others').comment()"}
use {'p00f/nvim-ts-rainbow'}
use {'mattn/emmet-vim'}
use {'potatoesmaster/i3-vim-syntax'}
use {'lukas-reineke/indent-blankline.nvim' }
use {'norcalli/nvim-colorizer.lua', config = "require('plugins.configs.colorizer')"}
use {'tpope/vim-dadbod'}
use {'kristijanhusak/vim-dadbod-ui'}
use {'SirVer/ultisnips'}
use {'honza/vim-snippets'}

-- LSP
use {'neovim/nvim-lspconfig', config = "require('lsp.config')"}
use {'kabouzeid/nvim-lspinstall', config = "require('lsp.install')", event = "VimEnter"}
use {'prabirshrestha/async.vim'}
use {'prabirshrestha/vim-lsp'}
use {'folke/lsp-colors.nvim',config = "require('lsp.lspcolor')"}
use {'thomasfaingnaert/vim-lsp-snippets'}
use {'glepnir/lspsaga.nvim', config = "require('plugins.configs.saga')"}
use {'onsails/lspkind-nvim', config = "require('plugins.configs.kind')"}
use {'folke/lsp-trouble.nvim', config = "require('plugins.configs.trouble')"}
use {'ray-x/lsp_signature.nvim'}
use {'nvim-lua/popup.nvim'}


-- LSP Cmp
use {'hrsh7th/nvim-cmp', event = 'InsertEnter',config = "require('plugins.configs.cmp')" }
use {'hrsh7th/cmp-buffer', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}
use {'hrsh7th/cmp-path', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}
use {'hrsh7th/cmp-calc', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}
use {'hrsh7th/cmp-nvim-lua', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}
use {'hrsh7th/cmp-nvim-lsp', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}
use {'quangnguyen30192/cmp-nvim-ultisnips', requires = "hrsh7th/nvim-cmp", after = 'nvim-cmp'}




use {'folke/which-key.nvim', config = "require('plugins.configs.whichKey')", event = "BufWinEnter"}

-- neoscroll for smooth scrolling
use {'karb94/neoscroll.nvim', config = "require('plugins.configs.neoscroll')"}


  -- blank open dashboard
use {'mhinz/vim-startify'}

  -- bottom status line
use {'glepnir/galaxyline.nvim', config = "require('plugins.configs.galaxyline')"}

use {'lewis6991/gitsigns.nvim',requires = {'nvim-lua/plenary.nvim'}}

  --  buffer line (with minimal TAb integration)
use {'akinsho/bufferline.nvim',requires = 'kyazdani42/nvim-web-devicons', config ="require('plugins.configs.bufferline')"}

use {"sbdchd/neoformat",cmd = "Neoformat",}


 use {"nvim-telescope/telescope.nvim",requires = 'nvim-lua/plenary.nvim'}

-- sidebar file manager
 use {"kyazdani42/nvim-tree.lua",requires = { 'kyazdani42/nvim-web-devicons'},config = "require('plugins.configs.nvimtree')"}


-- React
use {'mlaursen/vim-react-snippets'}
use {'peitalin/vim-jsx-typescript'}
use {'styled-components/vim-styled-components'}
use {'neoclide/vim-jsx-improve'}
use {'jose-elias-alvarez/nvim-lsp-ts-utils', after = {'nvim-treesitter'}}
use {'vuki656/package-info.nvim',requires = "MunifTanjim/nui.nvim", config = "require('plugins.configs.packageInfo')"}


end)
