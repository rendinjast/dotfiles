-- return {
--   "akinsho/bufferline.nvim",
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   version = "*",
--   opts = {
--     options = {
--       mode = "tabs",
--       show_close_icon = false,
--       offsets = {
--         {
--           filetype = "NvimTree",
--           text = "File Explorer",
--           highlight = "Directory",
--           text_align = "left",
--         },
--       },
--       diagnostics = "nvim_lsp",
--       diagnostics_indicator = function(count, level)
--         local icon = level:match "error" and " " or " "
--         return " " .. icon .. count
--       end,
--     },
--   },
-- }
