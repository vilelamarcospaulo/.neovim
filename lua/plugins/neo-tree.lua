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
