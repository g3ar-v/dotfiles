return {
  --lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      ---@type lspconfig.options
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  maxLineLength = 88,
                },
              },
            },
          },
        },
      },
      setup = {},
    },
  },
}
