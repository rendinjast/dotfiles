local telescope = require("telescope")
local a = vim.api

telescope.setup {}

local extensions = { "themes", "terms", "fzf" }
local packer_repos = [["extensions", "telescope-fzf-native.nvim"]]

if vim.fn.executable "ueberzug" == 1 then
   table.insert(extensions, "media_files")
   packer_repos = packer_repos .. ', "telescope-media-files.nvim"'
end

pcall(function()
   for _, ext in ipairs(extensions) do
      telescope.load_extension(ext)
   end
end)
