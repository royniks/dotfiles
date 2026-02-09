return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- This is where your setup options go
      require("gruvbox").setup({
        terminal_colors = true, 
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, 
        contrast = "hard", -- I set this to 'hard' for that crisp look
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      
      -- This actually applies the theme
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
