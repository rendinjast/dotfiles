return {
  "echasnovski/mini.files",
  version = false,
  -- General options
  opts = {
    mappings = {
      close = "q",
      go_in = "l",
      go_in_plus = "L",
      go_out = "h",
      go_out_plus = "H",
      mark_goto = "'",
      mark_set = "m",
      reset = "<BS>",
      reveal_cwd = "@",
      show_help = "g?",
      synchronize = "s",
      trim_left = "<",
      trim_right = ">",
    },
    windows = {
      preview = true,
      width_focus = 30,
      width_nofocus = 30,
      width_preview = 60,
      max_number = 3,
    },
    -- Whether to delete permanently or move into module-specific trash
    permanent_delete = true,
    -- Whether to use for editing directories
    use_as_default_explorer = true,
  },
  keys = {
    {
      "e",
      function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0))
      end,
      desc = "Open Mini Files",
    },
    {
      "<leader>e",
      function()
        MiniFiles.open()
      end,
      desc = "Open Mini Files",
    },
  },
  config = function(_, opts)
    local show_dotfiles = true
    local filter_show = function()
      return true
    end
    local filter_hide = function(fs_entry)
      return not vim.startswith(fs_entry.name, ".")
    end
    local toggle_dotfiles = function()
      show_dotfiles = not show_dotfiles
      local new_filter = show_dotfiles and filter_show or filter_hide
      MiniFiles.refresh { content = { filter = new_filter } }
    end
    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        local buf_id = args.data.buf_id
        -- Tweak left-hand side of mapping to your liking
        vim.keymap.set("n", ".", toggle_dotfiles, { desc = "Toggle hidden files", buffer = buf_id })
      end,
    })
    require("mini.files").setup(opts)
  end,
}
