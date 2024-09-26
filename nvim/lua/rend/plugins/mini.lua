return {
  "echasnovski/mini.ai",
  version = false,
  config = function(_, opts)
    local ai = require "mini.ai"
    ai.setup()
  end,
}
