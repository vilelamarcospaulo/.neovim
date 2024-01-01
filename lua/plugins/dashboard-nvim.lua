return {
  'glepnir/dashboard-nvim',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          '  Project browse   [SPC e]',
          '',
          '  Find Files     [SPC f f]',
          '',
          '  Recent Files   [SPC f r]',
          '',
          '  Git            [SPC g s]',
          '',
          '  Theme change   [SPC h t]',
          ' ',
          ' ',
        },
        packages = { enable = false }, -- show how many plugins neovim loaded
        project = { enable = false },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        },
        mru = { limit = 5, icon = ' ', label = 'Recent', cwd_only = false },
        footer = {
          '',
          '',
          ' [ TIP: To exit vim, just power off your computer.] ',
          '',
          '',
        }
      }
    }
  end
}
