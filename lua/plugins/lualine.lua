return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "meuter/lualine-so-fancy.nvim",
  },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        section_separators = { '' },
        component_separators = { left = "│", right = "│" },
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
        }
      },
      sections = {
        lualine_a = { { 'fancy_mode', width = 3 } },
        lualine_b = { { 'fancy_branch' }, { 'diff' } },
        lualine_c = {
          { 'filename', file_status = true, path = 1 }
        },
        lualine_x = {
          { "fancy_macro" },
          {
            "diagnostics",
            symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
            -- always_visible = true,
          },
          { "fancy_searchcount" },
          { "fancy_location" },
        },
        lualine_y = {
          { "fancy_filetype", ts_icon = '' }
        },
        lualine_z = {}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {
        lualine_a = {},
        lualine_b = {
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {
          { 'filename', file_status = true, path = 1 }
        },
        lualine_z = {
        },
      },
      extensions = {}
    }

    -- refresh lualine
    vim.cmd([[
augroup lualine_augroup
    autocmd!
    autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
augroup END
]])
  end
}
