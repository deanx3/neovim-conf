require('mason-lspconfig').setup({
    ensure_installed = {'gopls'},
    handlers = {
      --- this first function is the "default handler"
      --- it applies to every language server without a "custom handler"
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end,
    },
  })
  