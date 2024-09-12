return {
  "luisiacc/gruvbox-baby",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000,
  config = function()
    -- Default options:
    vim.g.material_terminal_italics = 1
    vim.g.material_theme_style = "darker"

    -- Example config in Lua
    vim.g.gruvbox_baby_function_style = "NONE"
    vim.g.gruvbox_baby_keyword_style = "italic"

    -- Each highlight group must follow the structure:
    -- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
    -- See also :h highlight-guifg
    -- Example:
    -- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

    -- Enable telescope theme
    vim.g.gruvbox_baby_telescope_theme = 0

    -- Enable transparent mode
    vim.g.gruvbox_baby_transparent_mode = 1

    vim.cmd [[colorscheme gruvbox-baby]]

    vim.cmd [[highlight Normal guibg=none]]
    vim.cmd [[highlight SignColumn guibg=none]]
    vim.cmd [[highlight CursorLine guibg=none]]
    vim.cmd [[highlight NonText guibg=none]]
    vim.cmd [[highlight Normal ctermbg=none]]
    vim.cmd [[highlight NonText ctermbg=none]]
  end,
}
