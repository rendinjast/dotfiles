return {
  "kaicataldo/material.vim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000,
  config = function()
    -- Default options:
    vim.g.material_terminal_italics = 1
    vim.g.material_theme_style = "darker"
    vim.cmd [[colorscheme material]]
    vim.cmd [[highlight Normal guibg=none]]
    vim.cmd [[highlight SignColumn guibg=none]]
    vim.cmd [[highlight CursorLine guibg=none]]
    vim.cmd [[highlight NonText guibg=none]]
    vim.cmd [[highlight Normal ctermbg=none]]
    vim.cmd [[highlight NonText ctermbg=none]]
  end,
}
