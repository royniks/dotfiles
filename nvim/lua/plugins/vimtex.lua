return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_complete_enabled = 1
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "/home/zeke/Documents/Study/vimtex_dumps",
      executable = "latexmk",
      options = {
        "-pdf",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
    }
  end,
}

