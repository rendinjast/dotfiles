return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require "lualine"
    local lazy_status = require "lazy.status" -- to configure lazy pending updates count

    local custom_gruvbox = require "lualine.themes.gruvbox-baby"
    local c = require("gruvbox-baby.colors").config()
    custom_gruvbox.normal.a.bg = c.red
    custom_gruvbox.inactive.c.bg = "transparent"

    -- configure lualine with modified theme
    lualine.setup {
      options = {
        icons_enabled = true,
        theme = custom_gruvbox,
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          {
            "buffers",
            mode = 2,
            use_mode_colors = false,
            buffers_color = {
              active = { bg = "transparent", fg = "#ff9e64", gui = "bold" },
              inactive = { bg = "transparent", fg = "#4c566a", gui = "bold" },
            },
          },
        },
        lualine_c = {},
        lualine_x = {
          "branch",
          "diff",
          "diagnostics",
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "filetype" },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
