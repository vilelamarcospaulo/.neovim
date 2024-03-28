return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-lua/lsp-status.nvim',
    'ofseed/lualine-copilot',
  },
  config = function()
    local lsp_status = require('lsp-status')
    lsp_status.config({
      indicator_errors = ' E',
      indicator_warnings = ' W',
      indicator_info = ' i',
      indicator_hint = ' H',
      indicator_ok = 'LSP',
      status_symbol = ' ',
    })
    lsp_status.register_progress()

    require('lualine').setup {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = { '' },
        section_separators = { '' },
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
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          { 'filename', file_status = true, path = 1 }
        },
        lualine_x = {
          "require('lsp-status').status()",
          'encoding',
          "filetype_fmt()",
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
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
