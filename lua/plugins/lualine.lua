return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'meuter/lualine-so-fancy.nvim',
    'nvim-lua/lsp-status.nvim',
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
        icons_enabled = true,
        theme = 'auto',
        section_separators = { '' },
        component_separators = { left = '│', right = '│' },
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
        lualine_a = { { 'fancy_mode', width = 10 } },
        lualine_b = { { 'fancy_branch' }, { 'diff' } },
        lualine_c = {
          { 'filename', file_status = true, path = 1 }
        },
        lualine_x = {
          { 'fancy_macro' },
          {
            'diagnostics',
            symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
            -- always_visible = true,
          },
          { 'fancy_searchcount' },
          { 'fancy_location' },
        },
        lualine_y = {
          {
            function()
              local clients = vim.lsp.get_clients({ bufnr = 0 })
              if #clients == 0 then
                return '[No LSP]'
              end

              return lsp_status.status()
            end,
          },
          { 'fancy_filetype', ts_icon = '' }
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
  end
}
