return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("texlab", {
      settings = {
        texlab = {
          build = {
            executable = "latexmk",
            args = {
              "-pdf",
              "-interaction=nonstopmode",
              "-synctex=1",
              "%f",
            },
            onSave = true,
          },
          forwardSearch = {
            executable = "zathura",
            args = {
              "--synctex-forward",
              "%l:1:%f",
              "%p",
            },
          },
        },
      },
    })
    vim.lsp.enable("texlab")
  end,
}

