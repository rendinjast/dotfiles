return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    local navigation = require "nvim-tmux-navigation"
    local keymap = vim.keymap

    keymap.set("n", "<c-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true, desc = "Move down" })
    keymap.set("n", "<c-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true, desc = "Move left" })
    keymap.set("n", "<c-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true, desc = "Move up" })
    keymap.set("n", "<c-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true, desc = "Move right" })

    navigation.setup {
      disable_when_zoomed = true, -- defaults to false
    }
  end,
}
