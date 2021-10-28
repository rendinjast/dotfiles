require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html","javascript","typescript","jsdoc","json","tsx","scss","python"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
