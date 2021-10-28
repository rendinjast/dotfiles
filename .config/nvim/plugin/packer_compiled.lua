-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rend/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/rend/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/rend/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/rend/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rend/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["async.vim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/async.vim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["bufferline.nvim"] = {
    config = { "require('plugins.configs.bufferline')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["calvera-dark.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/calvera-dark.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    after_files = { "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["galaxyline.nvim"] = {
    config = { "require('plugins.configs.galaxyline')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["i3-vim-syntax"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/i3-vim-syntax"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "require('lsp.lspcolor')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "require('plugins.configs.trouble')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "require('plugins.configs.kind')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('plugins.configs.saga')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "require('plugins.configs.neoscroll')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require('plugins.configs.autopairs')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "cmp-buffer", "cmp-path", "cmp-nvim-lua", "cmp-nvim-ultisnips", "cmp-calc" },
    config = { "require('plugins.configs.cmp')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('plugins.configs.colorizer')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "require('plugins.configs.others').comment()" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-lsp-ts-utils"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    config = { "require('lsp.config')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "require('lsp.install')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "require('plugins.configs.nvimtree')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-autopairs", "nvim-lsp-ts-utils" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["package-info.nvim"] = {
    config = { "require('plugins.configs.packageInfo')" },
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-jsx-improve"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-jsx-improve"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript"
  },
  ["vim-lsp"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-lsp"
  },
  ["vim-lsp-snippets"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-lsp-snippets"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-react-snippets"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-react-snippets"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/rend/.local/share/nvim/site/pack/packer/start/vim-styled-components"
  },
  ["which-key.nvim"] = {
    config = { "require('plugins.configs.whichKey')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rend/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('plugins.configs.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: package-info.nvim
time([[Config for package-info.nvim]], true)
require('plugins.configs.packageInfo')
time([[Config for package-info.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('plugins.configs.nvimtree')
time([[Config for nvim-tree.lua]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
require('plugins.configs.neoscroll')
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require('plugins.configs.colorizer')
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
require('plugins.configs.kind')
time([[Config for lspkind-nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
require('plugins.configs.others').comment()
time([[Config for nvim-comment]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
require('lsp.lspcolor')
time([[Config for lsp-colors.nvim]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
require('plugins.configs.trouble')
time([[Config for lsp-trouble.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require('plugins.configs.galaxyline')
time([[Config for galaxyline.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require('plugins.configs.saga')
time([[Config for lspsaga.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require('plugins.configs.bufferline')
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('lsp.config')
time([[Config for nvim-lspconfig]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
require('plugins.configs.autopairs')

vim.cmd [[ packadd nvim-lsp-ts-utils ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
