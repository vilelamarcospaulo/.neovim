require('nightfox').setup({
  fox = "nightfox",           -- change the colorscheme to use nordfox
  styles = {
    comments = "italic",      -- change style of comments to be italic
    keywords = "bold",        -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
    visual = true,      -- inverse the background and foreground of the visual selection
    search = true       -- inverse the background and foreground of the search highlight
  },
  colors = {
    red = "#FF000", -- Override the red color for MAX POWER
    bg_alt = "#000000"
  }
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
