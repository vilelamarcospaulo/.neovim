return {
  'glepnir/dashboard-nvim',
  config = function()
    require('dashboard').setup {
      theme = "doom",
      config = {
        header =
        {
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '  ____________________________   ',
          ' /                            \\  ',
          '|   It ain’t much, but it’s    | ',
          '|   honest work!!              | ',
          ' \\                            /  ',
          '  ----------------------------   ',
          '       \\                        ',
          '        \\   ^__^                ',
          '         \\  (oo)\\_______        ',
          '            (__)\\       )\\/\\    ',
          '                ||----w |       ',
          '                ||     ||       ',
          '',
          '',
          '',
          '',
        },
        center = {
          {
            icon = "  ",
            icon_hl = 'Title',
            desc = 'Recent Files                     ',
            desc_hl = 'String',
            keymap = 'SPC f r',
            action = "Telescope oldfiles",
            key = 'r',
            key_hl = 'Number'
          },
          {
            icon = "  ",
            icon_hl = 'Title',
            desc = 'Find Files                       ',
            desc_hl = 'String',
            keymap = 'SPC f f',
            action = "Telescope find_files find_command=rg,--hidden,--files",
            key = 'f',
            key_hl = 'Number'
          },
          {
            icon = "  ",
            icon_hl = 'Title',
            desc_hl = 'String',
            desc = 'File browser                     ',
            keymap = "SPC e",
            action = "NvimTreeToggle",
            key = 'e',
            key_hl = 'Number'
          },
          {
            icon = "  ",
            icon_hl = 'Title',
            desc_hl = 'String',
            desc = 'Git                             ',
            keymap = "SPC g s",
            action = "Git",
            key = 'g',
            key_hl = 'Number'
          },
          {
            icon = " ",
            icon_hl = 'Title',
            desc = 'Theme changer                    ',
            desc_hl = 'String',
            keymap = "SPC h t",
            action = "Telescope colorscheme",
            key = 'c',
            key_hl = 'Number'
          },
        },
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
