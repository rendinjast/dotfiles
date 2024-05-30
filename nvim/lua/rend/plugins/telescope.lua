return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require "telescope"
    local actions = require "telescope.actions"

    telescope.setup {
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<S-Tab>"] = actions.move_selection_next, -- move to next result
            ["<Tab>"] = actions.move_selection_previous, -- move to prev result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    }

    telescope.load_extension "fzf"

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
  end,
}
