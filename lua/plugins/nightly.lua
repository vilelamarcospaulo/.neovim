local white      = "#FFFFFF"
local fg         = "#AEAEAE"
local background = "#141B1E"
local light_bg   = "#202a2e"
local darker_bg  = "#101518"
local limit_bg   = "#2e3d42"

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
        ColorColumn          = { bg = limit_bg },
        CursorLine           = { bg = light_bg },
        CursorLineNr         = { fg = white },
        LineNr               = { bg = darker_bg, fg = fg },
        VertSplit            = { fg = fg, bg = darker_bg },
        WinSeparator         = { fg = light_bg, bg = background },

        -- Telescope
        TelescopePreviewLine = { bg = light_bg },

        -- Neotree
        NeoTreeDirectoryName = { fg = fg },
      },
    })
  end
}
