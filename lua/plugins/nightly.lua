local white     = "#FFFFFF"
local fg        = "#AEAEAE"
local light_bg  = "#202a2e"
local darker_bg = "#101518"
local limit_bg  = "#2e3d42"

return {
  "Alexis12119/nightly.nvim",
  config = function()
    require("nightly").setup({
      transparent = false,
      styles = {
        comments  = { italic = true },
        functions = { italic = false },
        variables = { italic = false },
        keywords  = { italic = false },
      },
      highlights = {
        -- neovim
        ColorColumn          = { bg = limit_bg },
        CursorLine           = { bg = light_bg },
        CursorLineNr         = { fg = white },
        LineNr               = { bg = darker_bg, fg = fg },
        -- SignColumn           = { bg = darker_bg },

        -- telescope
        TelescopePreviewLine = { bg = light_bg },

        -- nvim-tree
        -- NvimTreeWinSeparator = { fg = limit_bg },

        -- gitgutter
        -- GitGutterAdd         = { bg = darker_bg},
        -- GitGutterChange      = { bg = darker_bg},
        -- GitGutterDelete      = { bg = darker_bg},
      },
    })
  end
}
