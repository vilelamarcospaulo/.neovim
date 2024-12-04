return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup {
      default_component_configs = {
        indent = {
          indent_size = 2,
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "", -- this can only be used in the git_status source
            renamed   = "", -- this can only be used in the git_status source

            -- Status type
            untracked = "U",
            ignored   = "",
            unstaged  = "M",
            staged    = "S",
            conflict  = "",
          }
        },
      },
      file_size = {
        enabled = true,
        required_width = 60, -- min width of window required to show this column
      },
      type = {
        enabled = false,
        required_width = 120, -- min width of window required to show this column
      },
      last_modified = {
        enabled = true,
        required_width = 80, -- min width of window required to show this column
      },
      created = {
        enabled = true,
        required_width = 110, -- min width of window required to show this column
      },
      symlink_target = {
        enabled = false,
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_file_path)
            require("neo-tree.command").execute({ action = "close" })
          end
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        group_empty_dirs = true,
      },
      window = {
        auto_expand_width = true,
        width = 100,
        view = "auto",
      },
    }
  end,
}
