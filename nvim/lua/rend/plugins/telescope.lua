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
      },
    }

    telescope.load_extension "fzf"

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "ff",
      "<cmd>Telescope find_files theme=dropdown hidden=true<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "fr", "<cmd>Telescope oldfiles theme=dropdown<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "fs", "<cmd>Telescope live_grep theme=dropdown<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "fb", "<cmd>Telescope buffers theme=dropdown<cr>", { desc = "Find string in cwd" })
  end,
}
